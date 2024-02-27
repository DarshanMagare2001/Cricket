//
//  SignInVC.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import SwiftUI

struct SignInVC: View {
    @StateObject var presenter : SignInVCPresenter
    var body: some View {
        Text("SignInVC")
    }
}

struct SignInVC_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = SignInVCInteractor()
        let router = SignInVCRouter()
        let presenter = SignInVCPresenter(interactor: interactor, router: router)
        SignInVC(presenter: presenter)
    }
}
