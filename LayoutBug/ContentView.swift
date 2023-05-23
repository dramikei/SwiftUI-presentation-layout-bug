//
//  ContentView.swift
//  LayoutBug
//
//  Created by Raghav Vashisht on 23/05/23.
//

import SwiftUI

struct ContentView: View {

    @State var isPresented = false

    var body: some View {
        VStack(spacing: 16) {

            Button {

            } label: {
                Text("Testing")
            }
            .background(Color.red)

            Button {
                isPresented = true
            } label: {
                Text("Pop Over!")
            }
        }
        .popover(isPresented: $isPresented) {
            VStack {
                Text("Minimize app and reopen for layout bug!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
