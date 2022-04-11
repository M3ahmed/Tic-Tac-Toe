//
//  Extensions.swift
//  Tic-Tac-Toe
//
//  Created by Mohamed Ahmed on 4/11/22.
//

import Foundation
import SwiftUI

extension Text {
    func accentTitle() -> some View {
        self.font(.system(size: 32, weight: .heavy, design: .default))
            .foregroundColor(Color.accentColor)
    }
}
