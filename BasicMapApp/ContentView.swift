import SwiftUI

struct ContentView: View {
    @StateObject private var locationManager = LocationManager()

    var body: some View {
        MapView(locationManager: locationManager)
            .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
