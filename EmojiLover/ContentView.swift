//
//  ContentView.swift
//  EmojiLover
//
//  Created by Younis Rahman on 20/5/23.
//

import SwiftUI

enum Emoji:String, CaseIterable {
    case 🥳;
    case 🦄;
    case 🐉;
    case 🍀;
}

struct ContentView: View {
    @State var selection: Emoji = .🥳
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue).font(.system(size:200))
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id:\.self){emoji in Text(emoji.rawValue)}
                }.pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lover").padding()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

