//
//  SearchBarMap.swift
//  park-in
//
//  Created by Javier Cortes Cisneros on 29/04/23.
//

import SwiftUI

struct SearchBarMap: View {
    var body: some View {
        ZStack(alignment:.leading){
            Rectangle()
                .foregroundColor(Color.gray)
                .cornerRadius(20)
                .frame(width: 320,height: 40)
            Image(systemName:"magnifyingglass")
                .resizable()
                .frame(width: 20,height: 20)
                .foregroundColor(.white)
                .padding(.leading)
                
        }
    }
}
