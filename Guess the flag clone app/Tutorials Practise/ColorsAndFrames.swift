//
//  ColorsAndFrames.swift
//  Guess the flag clone app
//
//  Created by Shubham Kashyap on 01/11/26.
//

import SwiftUI

struct ColorsAndFrames: View {
    var body: some View {
        ZStack() {
            Color.red
                .ignoresSafeArea()
            
            Color.yellow
                .frame(width: 200, height: 400)

            Color.blue
                .frame(minWidth: 100, maxWidth: .infinity, maxHeight: 100)
            
            Color(red: 0.14, green: 0.3, blue: 0.25)
                    .frame(width: 50, height: 50)
            
            VStack {
                Text("Hello, World!")
                    .background(.orange)

                Image(systemName: "mail.fill")
                    .background(.orange)

            }
            
            Rectangle()
                .frame(width: 300, height: 500)
                .foregroundStyle(.secondary)
                .padding(50)
                .backgroundStyle(.ultraThinMaterial)
        }
    }
}

#Preview {
    ColorsAndFrames()
}
