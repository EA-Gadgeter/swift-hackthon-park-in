//
//  defaultRegion.swift
//  park-in
//
//  Created by Javier Cortes Cisneros on 29/04/23.
//

import Foundation
import MapKit

extension MKCoordinateRegion {
    static var defaultRegion: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.372530, longitude: -99.183960), latitudinalMeters: 100, longitudinalMeters: 100)
    }
}
