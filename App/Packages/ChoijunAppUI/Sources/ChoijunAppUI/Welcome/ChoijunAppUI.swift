// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct WelcomeView: View {
    
    public init() { }
    
    public var body: some View {
        VStack {
            Text("Welcome to ChoijunApp")
            Text("""
                This is story of ...
            """)
        }
    }
}

#if DEBUG
#Preview {
    WelcomeView()
}
#endif
