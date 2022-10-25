//
//  LoginViewModel.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/19/22.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    var username: String = ""
    var password: String = ""
    
    fileprivate func isEmailValid() -> Bool {
        
        return true
    }
    
    fileprivate func isUsernameValid() -> Bool {
        
        return true
    }
    
    fileprivate func isPasswordValid() -> Bool {
        
        return true
    }
    
    func isFormValid() -> Bool {
        
        return true
    }
}
