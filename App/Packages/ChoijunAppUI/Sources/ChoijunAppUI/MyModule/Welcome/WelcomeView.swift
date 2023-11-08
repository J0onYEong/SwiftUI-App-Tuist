import SwiftUI
import UIComponents

public struct WelcomeView: View {
    
    @StateObject private var viewModel: WelcomeViewModel
    
    public init(viewModel: WelcomeViewModel = WelcomeViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    public var body: some View {
        VStack {
            Text("Welcome to ChoijunApp")
                .padding(.bottom, 10)
            Text("""
                This is story of ...
            """)
            .padding(.bottom, 10)
            
            LottieView(filePath: viewModel.animationFilePath, loopMode: .loop)
                .padding(5)
        }
    }
}

#if DEBUG
#Preview {
    WelcomeView()
}
#endif
