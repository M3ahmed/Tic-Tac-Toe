//
//  HomeView.swift
//  Tic-Tac-Toe
//
//  Created by Mohamed Ahmed on 3/5/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.init(red: 0.91, green: 0.89, blue: 0.90)
                .ignoresSafeArea()
            VStack(spacing: 40){
                Image(systemName: "number")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .foregroundColor(Color.accentColor)
                    .shadow(radius: 2)
                VStack(spacing: 20){
                    Text("Tic Tac Toe")
                        .accentTitle()
                        .padding()
                    Text("Grab A Partner")
                        .foregroundColor(Color.accentColor)
                }
                HStack{
                    PrimaryButton(text: "VS Computer")
                    PrimaryButton(text: "VS Player")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
