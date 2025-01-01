import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    
    @ObservedObject var locationManager: LocationManager

    func makeUIView(context: Context) -> GMSMapView {
            let mapView = GMSMapView(frame: .zero)
            mapView.isMyLocationEnabled = true
            return mapView
        }
    
    func updateUIView(_ mapView: GMSMapView, context: Context) {
            if let location = locationManager.userLocation {
                let camera = GMSCameraPosition.camera(
                    withLatitude: location.coordinate.latitude,
                    longitude: location.coordinate.longitude,
                    zoom: 15.0
                )
                mapView.animate(to: camera)
            }
        }
}

