//
//  CardFormView.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct CardFormView: View {
    @State var cardNumber: String = ""
    
    var body: some View {
        ZStack {
            Color("GeneralBackground")
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                LottieComponent(name: "cardsLottie", loopMode: .loop)
                    .frame(height: 200)
                
                Text("Método de Pago")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.bottom, 10)
                
                HStack {
                    Image(systemName: "creditcard")
                        .font(.system(size: 40))
                        .foregroundColor(Color("IconPayMethods"))
                        
                    Text("Tarjeta Crédito/Débito")
                        .foregroundColor(.white)
                        .bold()
                }
                .frame(width: 300, height: 35)
                .padding()
                .background(Color("PressMethodButton"))
                .font(.title2)
                .cornerRadius(20)
                
                ScrollView {
                    VStack {
                        FormField(text: $cardNumber.max(16), icon: "creditcard.fill", label: "No. de Tarjeta")
                            .padding(.bottom, 25)
                        
                        FormField(text: $cardNumber.max(4), icon: "hourglass", label: "Caducidad")
                            .padding(.bottom, 25)
                        
                        FormField(text: $cardNumber.max(3), icon: "c.circle.fill", label: "CVV")
                            .padding(.bottom, 25)
                        
                        FormField(text: $cardNumber, icon: "person.fill", label: "Titular")
                            .padding(.bottom, 25)
                        
                        FormField(text: $cardNumber, icon: "house.fill", label: "Dirección")
                            .padding(.bottom, 25)
                        
                        FormField(text: $cardNumber, icon: "building.2.fill", label: "Ciudad")
                            .padding(.bottom, 25)
                        
                        FormField(text: $cardNumber.max(5), icon: "signpost.right.fill", label: "CP")
                            .padding(.bottom, 25)
                        
                        Button(action: {}) {
                            Text("Continuar")
                                .padding()
                                .background(.white)
                                .foregroundColor(.black)
                                .bold()
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal, 10)
                }
                .padding(.top, 10)
            }
            .padding(.horizontal, 25)
        }
    }
}

struct CardFormView_Previews: PreviewProvider {
    static var previews: some View {
        CardFormView()
    }
}
