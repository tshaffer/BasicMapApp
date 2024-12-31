import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> GMSMapView {
        // Set up the map camera
        let camera = GMSCameraPosition.camera(withLatitude: 37.7749, longitude: -122.4194, zoom: 10.0) // Default to San Francisco
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {
        // Update the map view if needed
    }
}

