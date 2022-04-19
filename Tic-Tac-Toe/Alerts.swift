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
    
    static let humanWinVsComp    = AlertItem(title: Text("You Win"),
                                       message: Text("You are so smart. You beat an AI Master"),
                                       buttonTitle: Text("Hell Yeah!"))
    static let humanWinVsHuman2    = AlertItem(title: Text("You Win"),
                                       message: Text("Way to go. You beat your Friend"),
                                       buttonTitle: Text("Hell Yeah!"))
    static let computerWin = AlertItem(title: Text("You Lost"),
                                       message: Text("Now chant my name you mediocre human being for I am superior"),
                                       buttonTitle: Text("Rematch"))
    static let draw        = AlertItem(title: Text("Draw"),
                                       message: Text("What a bottle of whits we have here..."),
                                       buttonTitle: Text("Try Again"))
}
