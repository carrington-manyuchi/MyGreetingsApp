//
//  Greetings3.swift
//  MyGreetingsApp
//
//  Created by Manyuchi, Carrington C on 2026/08/17.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Exploring iOS Programming")
                .font(.headline)
                .fontWeight(.thin)
        }
    }
}

#Preview {
    TitleView()
}
