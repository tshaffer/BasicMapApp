import SwiftUI

struct ContentView: View {
    var body: some View {
        MapView()
            .edgesIgnoringSafeArea(.all) // Makes the map fill the screen
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
