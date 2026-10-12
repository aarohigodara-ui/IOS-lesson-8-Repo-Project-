//
//  ContentView.swift
//  IOS lesson 8 [Repo Project]
//
//  Created by Aarohi Godara on 31/8/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopup = false

    var body: some View {
        Button("Do not press") {
            showPopup = true
        }
        .font(.title)
        .alert("Hi! ", isPresented: $showPopup) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("That did absolutely nothing useful.")
        }
    }
}

#Preview {
    ContentView()
}
