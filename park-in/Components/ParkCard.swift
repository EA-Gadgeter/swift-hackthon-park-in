//
//  ParkCard.swift
//  park-in
//
//  Created by Javier Cortes Cisneros on 29/04/23.
//

import SwiftUI

struct ParkCard: View {
    var body: some View {
        NavigationLink(destination: EmptyView()) {
            HStack {
                HStack(alignment: .top) {
                    AsyncImage(url: URL(string:("https://img.remediosdigitales.com/25f888/20170721_230642886_ios/1366_2000.jpg"))){
                        image in
                            image.resizable()
                            .frame(width: 120,height: 120)
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Nombre")
                            .font(.title3)
                            .bold()
                            .lineLimit(1)
                            .truncationMode(.tail)
                        
                        Text("Dirección")
                            .lineLimit(3)
                            .truncationMode(.tail)
                    }
                    .padding(.top)
                }
                .foregroundColor(.black)
                
                Spacer()
                
                HStack {
                    Text("5")
                        .font(.title2)
                        .foregroundColor(.black)
                    
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 25,height: 25)
                        .foregroundColor(.yellow)
                }
                .padding(.trailing)
            }
            .frame(height: 120)
            .background(Color("ParkCardBackground"))
            .cornerRadius(20)
        }
    }
}
