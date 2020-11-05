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
//    var myFunClass = ActionFunctions()
    
    var body: some View {
        // Main Group
        VStack {
            Text("\(appMsg) \(someCount)").padding()
            
//            Button(action: onClickActions) {
//                Text("Click me")
//            }
            HStack {
                Button(action: onClickActions){
                    Text("Rock")
                }.padding()
                Button(action: onClickActions){
                    Text("Paper")
                }.padding()
                Button(action: onClickActions){
                    Text("Scissors")
                }.padding()
            }
            
        }
    }
    
    func onClickActions() -> Void {
        appMsg = "Hello, There!"
        someCount = someCount + 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
