//
//  AlertMessages.swift
//  Guess the flag clone app
//
//  Created by Shubham Kashyap on 01/11/26.
//

import SwiftUI

struct AlertMessages: View {
    // Properties
    @State private var showingAlert = false
    
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important notice", isPresented: $showingAlert) {
//            Button("Yes") {}
//            Button("No") {}
//            Button("Ok") {}
            
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Secondary heading")
        }
    }
}

#Preview {
    AlertMessages()
}
