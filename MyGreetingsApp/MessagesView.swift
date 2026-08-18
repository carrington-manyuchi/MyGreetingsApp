//
//  Greetings2.swift
//  MyGreetingsApp
//
//  Created by Manyuchi, Carrington C on 2026/08/17.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        DataItemModel(text: "Hello there", color: .green),
        DataItemModel(text: "I love programming", color: .gray),
        DataItemModel(text: "Welcome to swift school", color: .red),
        DataItemModel(text: "Greeting", color: .yellow)
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            TitleView()
            Spacer()
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
            
            Spacer()

            Spacer()

        }
        
    }
}

#Preview {
    MessagesView()
}
