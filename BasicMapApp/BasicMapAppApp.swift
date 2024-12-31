import SwiftUI
import GoogleMaps

@main
struct BasicMapApp: App {
    init() {
        GMSServices.provideAPIKey("AIzaSyDUfyALZYhW7bJE8DFIQMyIH_bgIudacVI")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
