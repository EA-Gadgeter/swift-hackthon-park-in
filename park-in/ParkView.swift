//
//  ParkView.swift
//  park-in
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct ParkView: View{
    @Binding var showParkView: Bool
    @State var showSelectPension: Bool = false
    
    var body: some View{
        ZStack {
            Color("ParkCardScrollBackground")
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                ZStack{
                    //Aquí debería ir el mapa?
                    AsyncImage(url: URL(string:("https://img.remediosdigitales.com/25f888/20170721_230642886_ios/1366_2000.jpg"))){
                                        image in image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 1300, height: 400)
                                            .cornerRadius(30)
                                    }placeholder: {
                                        VStack{
                                            
                                        }
                                    }
                    
                    VStack {
                        Spacer()
                        
                        Text("Alvaro obregón, CDMX")
                            .padding(.horizontal)
                            .lineLimit(1)
                            .background(Color.gray.opacity(0.4))
                            .cornerRadius(10)
                            .font(.title2)
                            .bold()
                    }
                    .padding(.bottom)
                }
                .padding(.bottom, 0)
                .ignoresSafeArea()
                
                VStack{
                    HStack {
                        Text("A 5km de ti")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                        Spacer()
                        Text("5")
                            .foregroundColor(.white)
                        ForEach(1..<5){i in
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 20,height: 20)
                                .foregroundColor(.yellow)
                                .padding(.trailing,0)
                        }
                    }
                    .padding(.horizontal, 25)
                    .padding(.top,10)
                    
                    ZStack {
                        if(showSelectPension) {
                            VStack {
                                Spacer()
                                
                                SelectPension(showSelectPension: $showSelectPension)
                                
                                Spacer()
                            }
                        } else {
                            VStack{
                                Spacer()
                                
                                Text("El estacionamiento Emiliano Zapata cuenta con uno de los mejores servicios al cliente en toda la ciudad de México, con lavado de auto incluido y seguro de robo, este establecimiento ofrece una gran experiencia para quien necesite donde dejar su auto.")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                
                                Spacer()
                                
                                HStack(spacing: 15) {
                                    Button(action: {showSelectPension.toggle()}) {
                                        Text("Continuar")
                                            .padding()
                                            .background(.white)
                                            .foregroundColor(.black)
                                            .bold()
                                            .cornerRadius(20)
                                    }
                                    
                                    Button(action: {showParkView.toggle()}) {
                                        Text("Cancelar")
                                            .padding()
                                            .background(.red)
                                            .cornerRadius(20)
                                            .foregroundColor(.white)
                                            .bold()
                                    }
                                }
                                .padding(.vertical, 20)
                            }
                        }
                    }.padding(.horizontal, 30)
                }
                .frame(width: 350, height: 420)
                .ignoresSafeArea()
                .cornerRadius(40)
                .padding(.top)
            }
        }
    }
}
