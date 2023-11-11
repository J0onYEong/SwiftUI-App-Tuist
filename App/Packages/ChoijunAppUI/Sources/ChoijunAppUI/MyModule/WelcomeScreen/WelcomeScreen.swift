import SwiftUI
import UIComponents

public struct WelcomeScreen: View {
    @StateObject private var screenModel: WelcomeScreenModel

    @State private var triggerNavigation = false

    public init(screenModel: WelcomeScreenModel = WelcomeScreenModel()) {
        _screenModel = StateObject(wrappedValue: screenModel)
    }

    public var body: some View {
        VStack {
            Text("Welcome to ChoijunApp")
                .padding(.bottom, 10)
            Text("""
                This is story of ...
            """)
            .padding(.bottom, 10)

            LottieView(filePath: screenModel.animationFilePath, loopMode: .loop)
                .padding(5)

            Spacer()

            CTAButton(label: "Continue") {
                triggerNavigation.toggle()
            }
        }

        .navigationDestination(isPresented: $triggerNavigation) {
            ReminderSetUpScreen()
        }
    }
}

#if DEBUG
#Preview {
    WelcomeScreen()
}
#endif
