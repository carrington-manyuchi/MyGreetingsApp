//
//  ContentView.swift
//  MyGreetingsApp
//
//  Created by Manyuchi, Carrington C on 2026/08/17.
//

import SwiftUI

struct GreetingsView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.cyan.opacity(0.8), .blue.opacity(0.5), .purple.opacity(0.7)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.7)
            .ignoresSafeArea()
            
            VStack {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.purple)
                    .padding()
                    .background(.orange)
                    .padding()
                    .shadow(
                        color: .orange,
                        radius: 5,
                        x: 5,
                        y: 5
                    )
            }
            .padding()
        }
    }
}

#Preview {
    GreetingsView()
}
