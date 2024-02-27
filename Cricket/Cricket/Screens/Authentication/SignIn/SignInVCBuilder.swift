//
//  SignInVCBuilder.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import Foundation
import SwiftUI

public final class SignInVCBuilder {
    static func build() -> some View {
        let interactor = SignInVCInteractor()
        let router = SignInVCRouter()
        let presenter = SignInVCPresenter(interactor: interactor, router: router)
        let signInVC = SignInVC(presenter: presenter)
        return signInVC
    }
}
