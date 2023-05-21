//
//  ContentView.swift
//  Chapter-MVVM-Intro
//
//  Created by Mike Panitz on 5/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            QuizView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
