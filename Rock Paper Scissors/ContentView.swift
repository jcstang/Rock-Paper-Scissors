//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Jacob Stanger on 10/30/20.
//

import SwiftUI

struct ContentView: View {
    @State var appMsg: String = "Lorem ipsum"
    @State var someCount: Int = 0
    @State var rockPaperScissorsImgTxt: String = "rock"
    
    var body: some View {
        // Main Group
        VStack {
            Image(rockPaperScissorsImgTxt)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200.0).padding()
            Text("\(appMsg) \(someCount)").padding()
            
//            Button(action: onClickActions) {
//                Text("Click me")
//            }
            HStack {
                Button(action: onPressRock){
                    Text("Rock")
                }.padding()
                Button(action: onPressPaper){
                    Text("Paper")
                }.padding()
                Button(action: onClickActions){
                    Text("Scissors")
                }.padding()
            }
            
        }
    }
    
    func onPressRock() -> Void {
        onClickActions()
        rockPaperScissorsImgTxt = "rock"
    }
    
    func onPressPaper() -> Void {
        onClickActions()
        rockPaperScissorsImgTxt = "paper"
    }
    
    func onClickActions() -> Void {
        appMsg = "Hello, There!"
        someCount = someCount + 1
//        rockPaperScissorsImgTxt = "paper"
    }
    
    func getImageText() -> String {
        return "rock"
    }
    
    func getRockText() -> String {
        return "rock"
    }
    
    func getPaperText() -> String {
        return "paper"
    }
    
    func getScissorsText() -> String {
        return "scissors"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
