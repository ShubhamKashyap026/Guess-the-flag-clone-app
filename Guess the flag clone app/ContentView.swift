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
            
            // Linear Gradient
//            LinearGradient(colors: [
//                .blue, .black
//            ], startPoint: .top, endPoint: .bottom)
//            .ignoresSafeArea()
            
            // Radial Gradient
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 800)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Guess the flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
                Spacer()
                Spacer()
                
                Text("Score: ?")
                    .font(.title.bold())
                    .foregroundStyle(.white)
                
                Spacer()
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        
                        Text(countries[correntAnswer])
                    }
                    .foregroundStyle(.white)
                    
                    ForEach(0..<3) { num in
                        Button {
                            // Button was pressed
                            flagTapped(num)
                        } label: {
                            Image(countries[correntAnswer])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
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
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
            }
            .padding()
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
