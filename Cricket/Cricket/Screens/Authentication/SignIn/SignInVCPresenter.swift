//
//  SignInVCPresenter.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import Foundation
import SwiftUI

class SignInVCPresenter : ObservableObject {
    var interactor : SignInVCInteractor?
    var router : SignInVCRouter?
    init(interactor:SignInVCInteractor, router:SignInVCRouter){
        self.interactor = interactor
        self.router = router
    }
    @Published var emailAddressTextFldText = ""
    var emailAddressTextFldPlaceholder = "Email"
    @Published var emailAddressTextFldBorderColor = Color(UIColor.systemGray4)
    @Published var emailAddressTextFldIsShake = false
    
    @Published var passwordTextFldText = ""
    var passwordTextFldPlaceholder = "Password"
    @Published var passwordTextFldBorderColor = Color(UIColor.systemGray4)
    @Published var passwordTextFldIsShake = false
    
}

extension SignInVCPresenter {
    
}
