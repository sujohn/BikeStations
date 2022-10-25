//
//  LoginFormView.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import SwiftUI

struct LoginFormView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State var onTap: (String, String) -> ()
    
    var body: some View {
        VStack {
            VStack {
                Text("Login to")
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
                Text("TRAINEE PANEL")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.black)
            }
            VStack {
                TextField("Enter your username", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Enter your password", text: $password)
                    .textFieldStyle(.roundedBorder)
                VStack {
                    Button(action: {
                        onTap(username, password)
                    }) {
                        Text("Login")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 200, height: 40)
                    .background(Color(red: 22/255, green: 46/255, blue: 146/255))
                    .cornerRadius(8)
                }
                .padding()
            }
            .padding()
        }
        .padding()
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView(onTap: {_,_ in 
            
        })
    }
}
