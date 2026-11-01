import SwiftUI
import Playgrounds

struct StackToArrangeViews: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Spacer()
            Text("Hello, world!")
            Spacer()
        }
        .padding()
        .backgroundStyle(.red)
        
        VStack() {
            HStack{
                Rectangle()
                    .foregroundStyle(.yellow)
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.red)
            }
            
            HStack{
                Rectangle()
                    .foregroundStyle(.yellow)
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.red)
            }

            HStack{
                Rectangle()
                    .foregroundStyle(.yellow)
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.red)
            }

        }
        
        VStack(spacing: 20) {
            ForEach(0..<3) { _ in
                HStack(spacing: 20) {
                    ForEach(0..<3) { _ in
                        Rectangle()
                            .foregroundStyle(.yellow)
                    }
                }
            }
        }
        
        HStack(alignment: .bottom, spacing: 30) {
            Spacer()
            Text("Welcome to iOS Development")
            Spacer()
            Text("It's a great community")
            Spacer()
//            Rectangle()
//                .foregroundStyle(.blue)
//            Rectangle()
//                .foregroundStyle(.orange)
        }
        
        ZStack(alignment: .bottomTrailing) {
            Text("WWWW")
            Text("OOOO")
        }
    }
}

#Preview {
    StackToArrangeViews()
}

#Playground {
    _ = 1 + 2
}
