//
//  SignInVC.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import SwiftUI

struct SignInVC: View {
    @StateObject var presenter : SignInVCPresenter
    @State private var txtFldBorderColor = Color.red
    @State private var isShake = false
    var body: some View {
        VStack{
            Spacer()
            CommonTextFld(textFieldText: $presenter.emailAddress, textFieldPlaceHolder: "Email", textFldBorderColor: $txtFldBorderColor, isTextFldShake: $isShake)
                .onTapGesture {
                    isShake = true
                }
            Spacer()
            CommonSecureTextFld(textFieldText: $presenter.emailAddress, textFieldPlaceHolder: "Password", textFldBorderColor: $txtFldBorderColor, isTextFldShake: $isShake )
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
