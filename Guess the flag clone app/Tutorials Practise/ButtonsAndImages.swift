//
//  ButtonsAndImages.swift
//  Guess the flag clone app
//
//  Created by Shubham Kashyap on 01/11/26.
//

import SwiftUI

struct ButtonsAndImages: View {
    // Body
    var body: some View {
        
        VStack(spacing: 30) {
            Button("delete something") {
                print("Deleting now !!!")
            }
            
            Button("add something", action: addingSomething)
            
            Button("Destroy button", role: .destructive) {
                print("destroy it now !!!")
                
            }
        }
        
        
        VStack {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
            
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            Button("Button 5") {}
                .buttonStyle(.bordered)
                .tint(.green)
        }
        
        
        // Custom button building process
        VStack(spacing: 30) {
            Button {
                print("custom button was pressed")
            } label: {
                Text("CC Button")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.orange)
            }
            
            // Image Button
            Button {
                print("Edit your profile")
            } label: {
                HStack {
                    Text("Edit")
                    Image(systemName: "pencil")
                }
            }
            
            
            Button("Send mail", systemImage: "mail.fill") {
                print("Mail has been sent")
            }
            
            Button {
                print("Map button was pressed")
            } label: {
                Label("Map", systemImage: "globe.fill")
                    .padding(10)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
            }
        }

    }
    
    
    // Methods
    func addingSomething() {
        print("Adding now !!!")
    }
}

#Preview {
    ButtonsAndImages()
}
