//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Jacob Stanger on 10/30/20.
//

import SwiftUI

let ROCK_TEXT: String = "rock"
let PAPER_TEXT: String = "paper"
let SCISSORS_TEXT: String = "fancyscissors"

struct ContentView: View {
    @State var appMsg: String = "Lorem ipsum"
    @State var someCount: Int = 0
    @State var rockPaperScissorsImgTxt: String = "rock"
    
    var body: some View {
        // Main Group
        VStack {
            HStack {
//                Text("ME: \(10)").padding()
//                Text("Computer: \(9)").padding()
//                Text("Hello World")
//                    .fontWeight(.bold)
//                    .font(.callout)
//                    .padding()
//                    .background(Color.purple)
//                    .cornerRadius(40)
//                    .foregroundColor(.white)
//                    .padding(10)
            }
            .padding()
            
            Image(rockPaperScissorsImgTxt)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200.0).padding()
            Text("\(appMsg) \(someCount)").padding()
            
            HStack {
                Button(action: onPressRock){
                    Text("Rock")
                }.padding()
                Button(action: onPressPaper){
                    Text("Paper")
                }.padding()
                Button(action: onPressScissors){
                    Text("Scissors")
                }.padding()
            }
            
        }
    }
    
    func onPressRock() -> Void {
        onClickActions()
        appMsg = "Rock"
        rockPaperScissorsImgTxt = ROCK_TEXT
    }
    
    func onPressPaper() -> Void {
        onClickActions()
        appMsg = "Paper"
        rockPaperScissorsImgTxt = PAPER_TEXT
    }
    
    func onPressScissors() -> Void {
        onClickActions()
        appMsg = "Scissors"
        rockPaperScissorsImgTxt = SCISSORS_TEXT
    }
    
    func onClickActions() -> Void {
//        appMsg = "Hello, There!"
        someCount = someCount + 1
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
