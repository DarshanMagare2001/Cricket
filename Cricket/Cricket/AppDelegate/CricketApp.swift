//
//  CricketApp.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import SwiftUI

@main
struct CricketApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            SignInVCBuilder.build()
        }
    }
}

