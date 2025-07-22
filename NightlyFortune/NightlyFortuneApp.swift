//
//  NightlyFortuneApp.swift
//  NightlyFortune
//
//  Created by Manish Pandit on 7/22/25.
//

import SwiftUI

@main
struct NightlyFortuneApp: App {
    init() {
        NotificationManager.shared.requestAuthorization()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
