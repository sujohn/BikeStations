//
//  ContentView.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/19/22.
//

import SwiftUI

struct LoginView: View {
    
    @State private var isActive = false
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { reader in
                VStack {
                    LogoView()
                    Spacer()
                    LoginFormView { username, password in
                        
                    }
                    Spacer()
                }
                .background(
                    Color(red: 245/255, green: 247/255, blue: 251/255)
                )
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
