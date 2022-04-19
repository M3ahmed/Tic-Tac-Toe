//****************************************//
//                                        //
//  GameView.swift                        //
//  Tic-Tac-Toe                           //
//                                        //
//  Created by Mohamed Ahmed on 3/1/22.   //
//                                        //
//****************************************//

import SwiftUI

struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    @Binding var isDark: Bool
    var isHum: Bool
    @State var counter = 0
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
                LazyVGrid(columns: viewModel.columns, spacing: 5){
                    ForEach(0..<9) { i in
                        ZStack{
                            GameSquareView(proxy: geometry)
                            PlayerIndicator(systemImageName: viewModel.moves[i]? .indicator ?? "")
                        }
                        .onTapGesture {
                            if(isHum == false){
                                viewModel.processPlayerMove(for: i)
                            }else{
                                if(counter%2 == 0){
                                    viewModel.processPlayer2Move(for: i, fplayer: .human)
                                    
                                }else{
                                    viewModel.processPlayer2Move(for: i, fplayer: .humanTwo)
                                }
                            }
                            if(counter >= 9)
                            {
                                counter = 0
                            }else{counter = counter+1}
                        }
                    }
                }
                Spacer()
            }
            .disabled(viewModel.isGameBoardDisabled)
            .padding()
            .alert(item: $viewModel.alertItem, content: {alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: .default(alertItem.buttonTitle,
                                              action: {
                                                            viewModel.resetGame()
                                                            counter=0
                                                            
                                                        }))
            })
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(isDark ? Color.init(hue: 0.6, saturation: 0.3, brightness: 0.15) : Color.init(red: 0.91, green: 0.89, blue: 0.90))
            .ignoresSafeArea()
            .toolbar{
                Button{
                    isDark.toggle()
                }label: {
                    isDark ? Label("Day", systemImage: "sun.max.fill") : Label("Dark", systemImage: "moon.fill")
                }
            }
        }
    }
}

enum Player {
    case human, computer, humanTwo
}

struct Move {
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .human ? "xmark" : "circle"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(isDark: .constant(false),isHum: false)
            .previewDevice("iPhone 13 Pro Max")
    }
}

struct GameSquareView: View {
    
    var proxy: GeometryProxy
    
    var body: some View {
        Circle()
            .foregroundColor(.red).opacity(0.5)
            .frame(width: proxy.size.width/3 - 15,
                   height: proxy.size.width/3 - 15)
    }
}

struct PlayerIndicator: View {
    
    var systemImageName: String
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
    }
}
