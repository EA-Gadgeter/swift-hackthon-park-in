//
//  MainMapView.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI
import MapKit
import Combine

struct MainMapView: View {
    @ObservedObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion.defaultRegion
    @State private var cancellable: AnyCancellable?
    
    private func setCurrentLocation() {
        cancellable = locationManager.$location.sink {
            location in
            region = MKCoordinateRegion(center: location?.coordinate ?? CLLocationCoordinate2D(), latitudinalMeters: 500, longitudinalMeters: 500)
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                /*if (locationManager.location != nil) {
                    Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil)
                } else {
                    Text("Locating user location...")
                }*/
                Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil)
                    .ignoresSafeArea()
                
                VStack {
                    SearchBarMap()
                    
                    Spacer()
                    
                    VStack {
                        Text("Encuentra tu lugar más cercano")
                            .padding(.vertical, 20)
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .bold()
                        
                        ScrollView {
                            VStack(spacing: 25) {
                                ParkCard()
                                ParkCard()
                                ParkCard()
                            }
                            .padding(.horizontal)
                        }
                        .scrollIndicators(.hidden)
                    }
                    .frame(height: 320)
                    .background(Color("ParkCardScrollBackground"))
                }
            }
            .onAppear {
                //setCurrentLocation()
        }
        }
    }
}

struct MainMapView_Previews: PreviewProvider {
    static var previews: some View {
        MainMapView()
    }
}
