import SwiftUI
import GoogleMaps

@main
struct BasicMapApp: App {
    init() {
//        GMSServices.provideAPIKey("AIzaSyCaFpHHKdGvoyEJp3Z0NBiunu8Mymc25PQ")
//        if let apiKey = Bundle.main.object(forInfoDictionaryKey: "GoogleMapsAPIKey") as? String {
//            GMSServices.provideAPIKey(apiKey)
//        }
        if let apiKey = Bundle.main.object(forInfoDictionaryKey: "GoogleMapsAPIKey") as? String {
            print("Retrieved API Key: \(apiKey)")
            GMSServices.provideAPIKey(apiKey)
        } else {
            print("Failed to retrieve the API key.")
        }

    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
