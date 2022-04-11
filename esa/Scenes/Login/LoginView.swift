//
//  LoginView.swift
//  esa
//  
//  Created by TakashiUshikoshi on 2022/04/11
//  
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()

            Image("esa-tori")
                .resizable()
                .frame(width: 120, height: 120)
            
            Spacer()
            
            Button(action: {
                
            }) {
                HStack {
                    Image(systemName: "person.circle")
                    
                    Text("ログイン")
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color("esa-secondary"))
                .clipShape(RoundedRectangle(cornerRadius: 4))
            }
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) { scheme in
            LoginView()
                .preferredColorScheme(scheme)
        }
    }
}
