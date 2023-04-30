//
//  PayMethodView.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct PayMethodView: View {
    @State var ppPress = false
    @State var cashPress = false
    @State var keepViewOpen: Bool = false
    @State var showForm = false
    
    @Binding var showLogin: Bool
    @Binding var registerInfo: RegisterInfo
    @Binding var isAuth: Bool

    var body: some View {
        if(!showForm) {
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
                    
                    Button(action: {showForm.toggle()}) {
                        HStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 40))
                                .foregroundColor(Color("IconPayMethods"))
                                
                            Text("Tarjeta Crédito/Débito")
                                .foregroundColor(.black)
                                .bold()
                        }
                        .frame(width: 300, height: 35)
                        .padding()
                        .background(Color("PayMethodsButton"))
                        .font(.title2)
                        .cornerRadius(20)
                    }
                    
                    
                    Button(action: {ppPress.toggle()}) {
                        HStack {
                            Image(systemName: "p.circle.fill")
                                .font(.system(size: 40))
                                .foregroundColor(Color("IconPayMethods"))
                                
                            Text("PayPal")
                                .foregroundColor(!ppPress ? .black : .white)
                                .bold()
                        }
                        .frame(width: 300, height: 35)
                        .padding()
                        .background(!ppPress ? Color("PayMethodsButton") : Color("PressMethodButton"))
                        .font(.title2)
                        .cornerRadius(20)
                    }
                    
                    Button(action: {cashPress.toggle()}) {
                        HStack {
                            Image(systemName: "dollarsign.circle.fill")
                                .font(.system(size: 40))
                                .foregroundColor(!cashPress ? Color("CashIcon") : Color("PressCashIcon"))
                                
                            Text("Efectivo")
                                .foregroundColor(!cashPress ? .black : .white)
                                .bold()
                        }
                        .frame(width: 300, height: 35)
                        .padding()
                        .background(!cashPress ? Color("PayMethodsButton") : Color("CashIcon"))
                        .font(.title2)
                        .cornerRadius(20)
                    }
                    
                    Button(action: {showLogin.toggle()}) {
                        Text("Cancelar")
                            .padding(12.5)
                            .background(.red)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                            .bold()
                    }
                    .padding(.top, 30)
                }
            }
        } else {
            CardFormView(registerInfo: $registerInfo, showForm: $showForm, isAuth: $isAuth)
        }
    }
}
