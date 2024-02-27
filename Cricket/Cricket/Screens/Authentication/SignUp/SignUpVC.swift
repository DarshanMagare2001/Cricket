//
//  SignUpVC.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import SwiftUI

struct SignUpVC: View {
    @StateObject var presenter : SignUpVCPresenter
    var body: some View {
        Text("SignUpVC")
    }
}

struct SignUpVC_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = SignUpVCInteractor()
        let router = SignUpVCRouter()
        let presenter = SignUpVCPresenter(interactor: interactor, router: router)
        SignUpVC(presenter: presenter)
    }
}
