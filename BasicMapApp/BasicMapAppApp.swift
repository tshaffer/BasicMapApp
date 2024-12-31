import SwiftUI
import GoogleMaps

@main
struct BasicMapApp: App {
    init() {
        GMSServices.provideAPIKey("")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
