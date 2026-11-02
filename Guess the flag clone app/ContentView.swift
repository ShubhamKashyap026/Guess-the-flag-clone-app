//
//  ContentView.swift
//  Guess the flag clone app
//
//  Created by Shubham Kashyap on 01/11/26.
//

import SwiftUI

struct ContentView: View {
    // Properties
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correntAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
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
                        flagTapped(num)
                    } label: {
                        Image(countries[correntAnswer])
                    }
                    .alert("This is ", isPresented: $showingScore) {
                        Button("OK") {
                            askQuestions()
                        }
                    } message: {
                        Text("Your score is: ")
                    }
                }
            }
        }
    }
    
    
    // Methods
    func flagTapped(_ number: Int) {
        if number == correntAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestions() {
        countries.shuffle()
        correntAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
