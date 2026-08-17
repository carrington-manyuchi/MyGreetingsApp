//
//  Greetings2.swift
//  MyGreetingsApp
//
//  Created by Manyuchi, Carrington C on 2026/08/17.
//

import SwiftUI

struct Greetings2: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.purple)
                .padding()
                .background(.orange.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .orange, radius: 5, x: 10, y: 10)
            
            Text("Welcome to Swift Programming")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()
                .background(.gray.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .gray, radius: 5, x: 10, y: 10)
        }
    }
}

#Preview {
    Greetings2()
}
