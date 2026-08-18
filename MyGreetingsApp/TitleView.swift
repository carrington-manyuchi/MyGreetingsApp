//
//  Greetings3.swift
//  MyGreetingsApp
//
//  Created by Manyuchi, Carrington C on 2026/08/17.
//

import SwiftUI

struct TitleView: View {
    let linewidth: CGFloat = 15.0
    let diameter = 70.0
    @State private var isRotated = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 280)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]), center: .center)
    }
    
    var body: some View {
        HStack {
            VStack {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Exploring iOS Programming")
                    .font(.headline)
                    .fontWeight(.thin)
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(
                    angularGradient,
                    lineWidth: linewidth
                )
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation(.spring(duration: 1)) {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    TitleView()
}
