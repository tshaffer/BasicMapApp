import SwiftUI

struct ContentView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var shouldRecenter = false // State to trigger recentering

    var body: some View {
        ZStack {
            MapView(locationManager: locationManager, recenterTrigger: $shouldRecenter)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        shouldRecenter = true // Trigger recentering
                    }) {
                        Image(systemName: "location.fill") // A location icon
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
