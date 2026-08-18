//
//  Greetings3.swift
//  MyGreetingsApp
//
//  Created by Manyuchi, Carrington C on 2026/08/17.
//

import SwiftUI

/// This is the title view of the app which
///  displays a title, a subTitle, which randomly changes on tap
///  and we have colorful disc which rotates on tap
struct TitleView: View {
    let linewidth: CGFloat = 15.0
    let diameter = 70.0
    @State private var isRotated = false
    
    @State private var subTitle: String = "Exploring iOS Programming"
    
 
    let subTitles = [
        "Exploring iOS Programming",
        "Learning hoe bake cookies",
        "Learning SwiftUI tutorials",
        "A quest for the best SwiftUI tutorials"
    ]
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 280)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]), center: .center)
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                subTitle = subTitles.randomElement() ?? "Exploring iOS Programming"
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
        .padding()
    }
}

#Preview {
    TitleView()
}
