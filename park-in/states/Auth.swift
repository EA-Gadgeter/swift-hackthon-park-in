//
//  Auth.swift
//  park-in
//
//  Created by iOS Lab on 30/04/23.
//

import Foundation

class AppAuth: ObservableObject {
    @Published var isAuth: Bool
    
    init(){
        self.isAuth = false
    }
}
