//
//  MainView.swift
//  park-in
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var auth = AppAuth()
    
    var body: some View {
        if(auth.isAuth) {
            MainMapView()
        } else {
            LoginView(isAuth: $auth.isAuth)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
