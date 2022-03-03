//
//  Alerts.swift
//  Tic-Tac-Toe
//
//  Created by Mohamed Ahmed on 3/2/22.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}

struct AlertContext {
    let humanWin    = AlertItem(title: Text("You Win"),
                                message: Text("You are so smart. You beat your own AI"),
                                buttonTitle: Text("Hell Yeah!"))
    let computerWin = AlertItem(title: Text("You Lost"),
                                message: Text("You programmed a super AI"),
                                buttonTitle: Text("Rematch"))
    let draw        = AlertItem(title: Text("Draw"),
                                message: Text("What a bottle of whits we have here..."),
                                buttonTitle: Text("Try Again"))
}
