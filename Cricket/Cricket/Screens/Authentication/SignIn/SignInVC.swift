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
        VStack{
            Spacer()
            CommonTextFld(TextFieldText: $presenter.emailAddress, TextFieldPlaceHolder: "Email")
            Spacer()
            CommonSecureTextFld(TextFieldText: $presenter.emailAddress, TextFieldPlaceHolder: "Password" )
            Spacer()
            CommonBtn1(btnBackgroundColor: .appColorGreen, btnForegroundColor: .white, btnText: "Continue", btnAction:{
                
            })
            Spacer()
        }.padding(.horizontal,20)
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
