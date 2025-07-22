//
//  NotificationManager.swift
//  NightlyFortune
//
//  Created by Manish Pandit on 7/22/25.
//

import UserNotifications

class NotificationManager {
    static let shared = NotificationManager()

    func requestAuthorization() {
        UNUserNotificationCenter.current()
            .requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                if granted {
                    self.scheduleNightlyNotification()
                }
            }
    }

    func scheduleNightlyNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Your Nightly Fortune 🌙"
        content.body = "Tap to reveal your nightly message."
        content.sound = .default

        var dateComponents = DateComponents()
        dateComponents.hour = 21

        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)

        let request = UNNotificationRequest(identifier: "NightlyFortune",
                                            content: content,
                                            trigger: trigger)

        UNUserNotificationCenter.current().add(request)
    }
}

