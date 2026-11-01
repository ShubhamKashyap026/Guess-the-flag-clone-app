//
//  Gradients.swift
//  Guess the flag clone app
//
//  Created by Shubham Kashyap on 01/11/26.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            
            LinearGradient(stops: [
                Gradient.Stop(color: .orange, location: 0.5),
                Gradient.Stop(color: .cyan, location: 0.6),
                Gradient.Stop(color: .pink, location: 0.8)
            ], startPoint: .top, endPoint: .bottom)
            
            
            
            LinearGradient(stops: [
                .init(color: .yellow, location: 0.2),
                .init(color: .orange, location: 0.3),
                .init(color: .red, location: 0.4),
                .init(color: .pink, location: 0.5),
                .init(color: .blue, location: 0.6),
            ], startPoint: .bottomLeading, endPoint: .topTrailing)
            
            
            
            RadialGradient(colors: [
                .cyan, .indigo, .blue, .yellow, .red
            ], center: .top, startRadius: 10, endRadius: 250)
            
            
            
            AngularGradient(colors: [
                .green, .blue
            ], center: .center, angle: .degrees(90))
            
            
            
            Text("This is demo text for interview")
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
                .background(
                    .indigo.gradient
//                    LinearGradient(colors: [
//                        Color.indigo
//                    ],startPoint: .topLeading, endPoint: .bottomTrailing)
                )
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Gradients()
}
