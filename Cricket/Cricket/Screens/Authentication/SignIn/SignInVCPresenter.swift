//
//  SignInVCPresenter.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import Foundation

class SignInVCPresenter : ObservableObject {
    var interactor : SignInVCInteractor?
    var router : SignInVCRouter?
    init(interactor:SignInVCInteractor, router:SignInVCRouter){
        self.interactor = interactor
        self.router = router
    }
}

extension SignInVCPresenter {
    
}
