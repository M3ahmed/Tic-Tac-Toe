//
//  Extensions.swift
//  Tic-Tac-Toe
//
//  Created by Mohamed Ahmed on 4/11/22.
//

import Foundation
import SwiftUI

extension Text {
    func mainTitle(color: Color) -> some View {
        self.font(.system(size: 32, weight: .heavy, design: .default))
            .foregroundColor(color)
    }
}

extension Image {
    func mainLogo(color: Color) -> some View {
        self.renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
            .foregroundColor(color)
    }
}

extension VStack {
    func homePage(color: Color) -> some View{
        self.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(color)
            .ignoresSafeArea()
    }
}
