//
//  LoginInteractor.swift
//  esa
//
//  Created by TakashiUshikoshi on 2022/04/11
//
//

import Foundation
import Alamofire

final class LoginInteractor {
    func fetchOAuthToken(_ authCode: String) -> OAuthTokenResponse? {
        let requestParameters: [String: String] = [
            "client_id": (Bundle.main.object(forInfoDictionaryKey: "OAUTH_CLIENT_ID") as! String),
            "client_secret": (Bundle.main.object(forInfoDictionaryKey: "OAUTH_CLIENT_SECRET") as! String),
            "grant_type": "authorization_code",
            "redirect_uri": "\((Bundle.main.object(forInfoDictionaryKey: "APP_REDIRECT_URI") as! String))://",
            "code": authCode
        ]
        
        print(requestParameters)
        var fetchResult: OAuthTokenResponse?
        
        AF
            .request(
                Constants.Esa.Url.token,
                method: .post,
                parameters: requestParameters,
                encoding: URLEncoding(destination: .queryString)
            )
            .responseDecodable(of: OAuthTokenResponse.self) { response in
                switch response.result {
                case .success(let responseData):
                    print("Success: Fetching OAuth Token")
                    
                    fetchResult = responseData

                case .failure(let error):
                    print("Error: \(error)")
                    
                    fetchResult = nil

                }
            }
        
        return fetchResult
    }
}
