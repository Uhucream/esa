import Foundation
import AuthenticationServices
import UIKit
import SwiftUI
import Combine
import KeychainAccess


class AuthPresentationContextProvider: NSObject, ASWebAuthenticationPresentationContextProviding {
    private weak var viewController: UIViewController!
    
    init(viewController: UIViewController) {
        self.viewController = viewController
        super.init()
    }
    
    func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        return viewController?.view.window! ?? ASPresentationAnchor()
    }
}

final class LoginPresenter: ObservableObject {
    private var session: ASWebAuthenticationSession?
    private var presentationContextProvider: AuthPresentationContextProvider?
    
    private let keychain = Keychain(service: "pictures.uhucream-takashi.esa-Debug")
    private let interactor = LoginInteractor()
    
    
    func authenticate() {
        let scheme = "esa"
        
        var urlComponents = URLComponents(string: Constants.Esa.Url.authorize.absoluteString)
        urlComponents?.queryItems = [
            URLQueryItem(name: "client_id", value: (Bundle.main.object(forInfoDictionaryKey: "OAUTH_CLIENT_ID") as! String)),
            URLQueryItem(name: "redirect_uri", value: "\((Bundle.main.object(forInfoDictionaryKey: "APP_REDIRECT_URI") as! String))://"),
            URLQueryItem(name: "response_type", value: "code"),
            URLQueryItem(name: "scope", value: "read+write")
        ]
        
        // Use the URL and callback scheme specified by the authorization provider.
        guard let authURL = urlComponents?.url else { return }
        
        // Initialize the session.
        self.session = ASWebAuthenticationSession(url: authURL, callbackURLScheme: scheme, completionHandler: { callbackURL, error in
            // Handle the callback.
            if (error != nil) {
                return
            }
            if (callbackURL != nil){
                let queryItems = URLComponents(string: callbackURL!.absoluteString)?.queryItems
                let authCode = queryItems?.filter({ $0.name == "code" }).first?.value
                
                guard authCode != nil else { return }
                
                let tokenObject = self.interactor.fetchOAuthToken(authCode!)
                let accessToken = tokenObject?.access_token
                
                self.keychain["oauth-token"] = accessToken
            }
        })
        
        let presentationContextProvider = AuthPresentationContextProvider(viewController: UIHostingController(rootView: LoginView()))
        self.session?.presentationContextProvider = presentationContextProvider
        self.presentationContextProvider = presentationContextProvider
        self.session?.start()
    }
    
    func cancelAuth() {
        self.session?.cancel()
    }
}
