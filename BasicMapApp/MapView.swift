import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    @ObservedObject var locationManager: LocationManager
    var recenterTrigger: Binding<Bool> // Trigger to recenter the map

    func makeUIView(context: Context) -> GMSMapView {
        let mapView = GMSMapView(frame: .zero)
        mapView.isMyLocationEnabled = true
        return mapView
    }

    func updateUIView(_ mapView: GMSMapView, context: Context) {
        if let location = locationManager.userLocation, recenterTrigger.wrappedValue {
            let camera = GMSCameraPosition.camera(
                withLatitude: location.coordinate.latitude,
                longitude: location.coordinate.longitude,
                zoom: 15.0
            )
            mapView.animate(to: camera)
            recenterTrigger.wrappedValue = false // Reset the trigger
        }
    }
}
