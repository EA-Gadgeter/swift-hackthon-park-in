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
    @State var showParkView: Bool = false
    @State var menuOpened = false
    
    private func setCurrentLocation() {
        cancellable = locationManager.$location.sink {
            location in
            region = MKCoordinateRegion(center: location?.coordinate ?? CLLocationCoordinate2D(), latitudinalMeters: 500, longitudinalMeters: 500)
        }
    }
    
    func toggleMenu() {
        menuOpened.toggle()
    }
    
    var body: some View {
        if (showParkView){
            ParkView(showParkView: $showParkView)
                .transition(.move(edge: .bottom))
        } else{
            ZStack {
                Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil)
                    .ignoresSafeArea()
                
                VStack {
                    HStack (){
                        if(!menuOpened) {
                            Button(action: {menuOpened.toggle()}) {
                                Image(systemName: "line.horizontal.3")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.gray)
                                    .clipShape(Circle())
                            }
                        }
                        
                        SearchBarMap()
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Encuentra tu lugar más cercano")
                            .padding(.vertical, 20)
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .bold()
                        
                        ScrollView {
                            VStack(spacing: 25) {
                                ParkCard(showParkView: $showParkView)
                                ParkCard(showParkView: $showParkView)
                                ParkCard(showParkView: $showParkView)
                            }
                            .padding(.horizontal)
                        }
                        .scrollIndicators(.hidden)
                    }
                    .frame(height: 320)
                    .background(Color.gray)
                }
                
                SideMenu(width: UIScreen.main.bounds.width / 1.2, menuOpened: $menuOpened, toggleMenu: toggleMenu)
                    .ignoresSafeArea()
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
