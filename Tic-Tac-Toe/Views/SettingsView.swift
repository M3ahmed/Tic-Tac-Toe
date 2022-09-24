//
//  SettingsView.swift
//  Tic-Tac-Toe
//
//  Created by Mohamed Ahmed on 8/19/22.
//

import SwiftUI

struct SettingsView: View {
    @State private var isDark = false
    var body: some View {
        NavigationView {
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(isDark ? Color.init(hue: 0.6, saturation: 0.3, brightness: 0.15) : Color.init(red: 0.91, green: 0.89, blue: 0.90))
        .ignoresSafeArea()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
