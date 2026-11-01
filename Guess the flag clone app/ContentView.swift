//
//  ContentView.swift
//  Guess the flag clone app
//
//  Created by Shubham Kashyap on 01/11/26.
//

import SwiftUI

struct ContentView: View {
    // Properties
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    var correntAnswer = Int.random(in: 0...2)
    
    // Body
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                    Text(countries[correntAnswer])
                }
                .foregroundStyle(.white)
                
                ForEach(0..<3) { num in
                    Button {
                        // Button was pressed
                    } label: {
                        Image(countries[correntAnswer])
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
