//
//  MapKit.swift
//  Places
//
//  Created by Thibault GODEFROY on 26/09/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.868143, longitude: 2.339605), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

    var body: some View {
        NavigationView{
        Map(coordinateRegion: $mapRegion, annotationItems: places) { place in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.lat, longitude: place.lon)) {
                
                NavigationLink(destination: MapDetail(places: place)) {
                    
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.blue)
                    Text(place.name)
                    
                    
                    
                }
            }
            } .ignoresSafeArea()
        }
    
    }
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
