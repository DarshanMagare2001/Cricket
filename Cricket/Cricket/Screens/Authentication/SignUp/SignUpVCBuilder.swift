//
//  SignUpVCBuilder.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import Foundation
import SwiftUI

public final class SignUpVCBuilder {
    static func build() -> some View {
        let interactor = SignUpVCInteractor()
        let router = SignUpVCRouter()
        let presenter = SignUpVCPresenter(interactor: interactor, router: router)
        let signUpVC = SignUpVC(presenter: presenter)
        return signUpVC
    }
}
