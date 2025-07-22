//
//  FortuneManager.swift
//  NightlyFortune
//
//  Created by Manish Pandit on 7/22/25.
//

import Foundation

class FortuneManager {
    static let shared = FortuneManager()

    private let fortunes = [
        "You are more powerful than your fear.",
        "Tomorrow holds beauty you've yet to see.",
        "Kindness returns to you in waves.",
        "Breathe in calm. Breathe out doubt.",
        "Something good is on its way to you.",
        "Your heart knows the way—trust it.",
        "You will have a wonderful day!",
       "Good news is coming your way.",
       "Happiness is around the corner.",
       "A pleasant surprise awaits you.",
       "Your hard work will soon pay off.",
       "You are capable of amazing things!",
       "Today is a perfect day to start something new.",
       "Believe in yourself and all that you are.",
       "Great things never come from comfort zones.",
       "Your positivity is infectious!"
    ]

    func randomFortune() -> String {
        return fortunes.randomElement() ?? "You are enough."
    }
}

