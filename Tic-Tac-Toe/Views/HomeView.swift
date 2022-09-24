//
//  HomeView.swift
//  Tic-Tac-Toe
//
//  Created by Mohamed Ahmed on 3/5/22.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var isDark: Bool
//    @Binding var isComp: Bool
    @State private var isHuman = true
    @State private var isComp = false
    var body: some View {
        
        NavigationView {
                VStack(spacing: 40){
                    Image(systemName: "number")
                        .mainLogo(color: Color.accentColor)
                    VStack(spacing: 20){
                        Text("Tic Tac Toe")
                            .mainTitle(color: Color.accentColor)
                            .padding()
                        Text("Grab A Partner")
                            .foregroundColor(Color.accentColor)
                    }
                    HStack{
                        NavigationLink{
                            GameView(isDark: $isDark, isHum: isComp)
                        } label: {
                            PrimaryButton(text: "VS Computer", backColor:  Color.accentColor, forColor: .white)
                        }
                        NavigationLink{
                            GameView(isDark: $isDark, isHum: isHuman)
                        } label: {
                            PrimaryButton(text: "VS Player", backColor:  Color.accentColor, forColor: .white)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(isDark ? Color.init(hue: 0.6, saturation: 0.3, brightness: 0.15) : Color.init(red: 0.91, green: 0.89, blue: 0.90))
                .ignoresSafeArea()
                .toolbar{
                    NavigationLink{
                        SettingsView()
                    } label: {
                        Label("Day", systemImage: "gearshape.fill")
                    }
                }
            }
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(isDark: .constant(false))
    }
}
