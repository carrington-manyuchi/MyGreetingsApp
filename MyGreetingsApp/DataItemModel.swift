//
//  DataItemModel.swift
//  MyGreetingsApp
//
//  Created by Manyuchi, Carrington C on 2026/08/17.
//

import Foundation
import SwiftUI

struct DataItemModel: Identifiable {
    let id: UUID = UUID()
    let text: String
    let color: Color
}
