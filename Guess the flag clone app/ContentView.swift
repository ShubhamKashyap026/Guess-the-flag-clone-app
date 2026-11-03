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
    @State private var userScore = 0
    @State private var currentQuestionCount = 0
    
    // Body
    var body: some View {
        
        ZStack {
            
            // Radial Gradient
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 800)
            .ignoresSafeArea()
            
            //            Rectangle()
            //                .foregroundStyle(.red.gradient)
            //                .ignoresSafeArea()
            
            //            Color.indigo
            //                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Guess the flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
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
                            FlagImage(imageName: countries[num])
                        }
                        .alert(scoreTitle, isPresented: $showingScore) {
                            Button("OK") {
                                askQuestions()
                            }
                        } message: {
                            Text("Your score is: \(userScore)")
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(userScore)")
                    .font(.title.bold())
                    .foregroundStyle(.white)
                
                Spacer()
                
            }
            .padding()
        }
    }
    
    
    // Methods
    func flagTapped(_ number: Int) {
        currentQuestionCount += 1
        
        if number == correntAnswer {
            scoreTitle = "Correct"
            userScore += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])"
            userScore -= 1
        }
        
        if userScore < 0 {
            userScore = 0
        }
        
        showingScore = true
    }
    
    func askQuestions() {
        countries.shuffle()
        correntAnswer = Int.random(in: 0...2)
        
        if currentQuestionCount == 8 {
            scoreTitle = "This game is finished"
            currentQuestionCount = 1
            userScore = 0
        }
    }
}

struct FlagImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

#Preview {
    ContentView()
}

