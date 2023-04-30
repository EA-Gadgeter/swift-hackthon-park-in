//
//  MainMapView.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct MainMapView: View {
    @ObservedObject private var locationManager = LocationManager()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MainMapView_Previews: PreviewProvider {
    static var previews: some View {
        MainMapView()
    }
}
