//
//  SignUpVCPresenter.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import Foundation

class SignUpVCPresenter : ObservableObject {
    var interactor : SignUpVCInteractor?
    var router : SignUpVCRouter?
    init(interactor:SignUpVCInteractor, router:SignUpVCRouter){
        self.interactor = interactor
        self.router = router
    }
}

extension SignUpVCPresenter {
    
}

