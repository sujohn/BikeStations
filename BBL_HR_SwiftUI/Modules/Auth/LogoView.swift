//
//  LogoView.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(40)
                Text("BRAC Bank")
                    .font(.system(size: 12))
            }
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
