//
//  Shopping_App_ApplePayApp.swift
//  Shopping_App_ApplePay
//
//  Created by Mustafa Kılınç on 7.04.2023.
//

import SwiftUI

@main
struct Shopping_App_ApplePayApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(cartManager: CartManager())
        }
    }
}
