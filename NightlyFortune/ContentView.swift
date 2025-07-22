//
//  ContentView.swift
//  NightlyFortune
//
//  Created by Manish Pandit on 7/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showFortune = false
    @State private var fortuneText = ""

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .black]),
                           startPoint: .top,
                           endPoint: .bottom)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                if showFortune {
                    Text(fortuneText)
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .transition(.scale)
                }

                Button(action: {
                    withAnimation {
                        fortuneText = FortuneManager.shared.randomFortune()
                        showFortune.toggle()
                    }
                }) {
                    Image(systemName: "sparkles")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                        .padding()
                        .background(Circle().fill(Color.white.opacity(0.2)))
                }

                Text("Tap the star to reveal your nightly fortune")
                    .foregroundColor(.white.opacity(0.7))
                    .font(.subheadline)
            }
            .padding()
        }
    }
}
