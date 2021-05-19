//
//  ContentView.swift
//  states
//
//  Created by user190175 on 5/18/21.
//

import SwiftUI

struct ContentView: View {
    @State var state: String = ""
    var body: some View {
        NavigationView {

            VStack{
                TextField("fasdf", text: $state)
                Text(state)
                NavigationLink(destination: secondView(state:$state)) {
                    Text("next")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
