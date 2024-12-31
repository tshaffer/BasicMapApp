import SwiftUI
import GoogleMaps

@main
struct BasicMapApp: App {
    init() {
//        GMSServices.provideAPIKey("AIzaSyCaFpHHKdGvoyEJp3Z0NBiunu8Mymc25PQ")
        if let apiKey = Bundle.main.object(forInfoDictionaryKey: "GoogleMapsAPIKey") as? String {
            GMSServices.provideAPIKey(apiKey)
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
