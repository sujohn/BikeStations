//
//  ForgotPasswordView.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/19/22.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State var username = ""
    
    var body: some View {
        
        GeometryReader { reader in
            VStack {
                VStack {
                    TextField("Username", text: $username)
                        .frame(height: 45)
                        .textFieldStyle(.plain)
                        .padding([.horizontal], 8)
                        .cornerRadius(5)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(.gray))
                        .padding([.vertical], 4)
                        .foregroundColor(.black)
                    Spacer()
                    Button(action: {
                        print("====")
                    }) {
                        Spacer()
                        HStack {
                            Text("Submit")
                                .font(.system(size: 24, weight: .medium))
                        }
                        Spacer()
                    }
                    .frame(height: 45)
                    //.padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .frame(width: reader.size.width * 0.80, height: 150)
                .padding()
                .background(Color(red: 246/255, green: 246/255, blue: 246/255).opacity(1))
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("bg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: reader.size.width)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.1)
            )
        }
        .background(Color(red: 245/255, green: 247/255, blue: 251/255))
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
