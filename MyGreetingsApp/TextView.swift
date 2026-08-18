//
//  TextView.swift
//  MyGreetingsApp
//
//  Created by Manyuchi, Carrington C on 2026/08/17.
//

import SwiftUI

struct TextView: View {
    let text: String
    @State var color: Color
    
    let colors: [Color] = [
        .red, .green, .blue, .orange, .yellow, .purple, .gray,
        Color(red: 0.5, green: 0, blue: 0.5 ),
        Color(red: 0, green: 0.5, blue: 0.5 ),
        Color(red: 139/255, green: 207/255, blue: 240/255 ),
        Color(red: 1, green: 215/255, blue: 0 )
    ]

    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding()
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .gray, radius: 5, x: 10, y: 10)
            .onTapGesture {
                withAnimation {
                    color = colors.randomElement() ?? .green
                }
                
            }
    }
}

#Preview {
    TextView(text: "I love coding", color: .red)
}
