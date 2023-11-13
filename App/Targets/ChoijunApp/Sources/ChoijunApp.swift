import SwiftUI
import ChoijunPackage

@main
struct TuistTempApp: App {
    
    var choijunPackage: ChoijunPackage {
        ChoijunPackage(config: ChoijunPacakgeCinfig(
            viewAfterOnBoarding: AnyView(Text("Next View"))
            )
        )
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                choijunPackage.start()
            }
        }
    }
}
