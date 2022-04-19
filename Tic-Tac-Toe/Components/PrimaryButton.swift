//
//  PrimaryButton.swift
//  Tic-Tac-Toe
//
//  Created by Mohamed Ahmed on 4/11/22.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
//    @State private var isComp: String = "VS Computer"
    //var background: Color = Color("AccentColor")
    var backColor: Color
    var forColor: Color
//    @State var boolToggle: Bool
    var body: some View {
        Text(text)
            .foregroundColor(forColor)
            .padding()
            .padding(.horizontal)
            .background(backColor)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
//    func isComp (text:String){
//        if text.compare(isComp) == .orderedSame {
//            boolToggle.toggle()
//        }
//    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "next", backColor: .white, forColor: .white)
    }
}
