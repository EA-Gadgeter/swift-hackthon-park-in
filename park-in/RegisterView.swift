//
//  RegisterView.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI
import iPhoneNumberField

struct RegisterView: View {
    @State var registerInfo = RegisterInfo(
        email: "",
        password: "",
        phoneNumber: "",
        creditCard: "",
        cardEndDate: "",
        cardCVV: "",
        userName: "",
        userAddress: "",
        userCity: "",
        CP: ""
    )
    
    @State var confirmPassword = ""
    
    @State var disableNavigate = true
    
    @Binding var showLogin: Bool
    @Binding var isAuth: Bool
    
    func validateForm() {
        if(registerInfo.email.isEmpty || registerInfo.password.isEmpty) {
            disableNavigate = true
            return
        }
        
        if(registerInfo.password.count < 10){
            disableNavigate = true
            return
        }
        
        if(registerInfo.password != confirmPassword) {
            disableNavigate = true
            return
        }
        
        disableNavigate = false
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("GeneralBackground")
                    .ignoresSafeArea()
                
                VStack {
                    LottieComponent(name: "63800-car-animation", loopMode: .loop, contentMode: .scaleAspectFill)
                        .ignoresSafeArea()
                    
                    VStack {
                        FormField(text: $registerInfo.email, icon: "at", label: "Correo electrónico")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.email) {
                                text in
                                validateForm()
                            }
                        
                        PasswordField(password: $registerInfo.password, label: "Contraseña")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.password) {
                                text in
                                validateForm()
                            }
                        
                        PasswordField(password: $confirmPassword, label: "Confirmar contraseña")
                            .padding(.bottom, 25)
                            .onChange(of: confirmPassword) {
                                text in
                                validateForm()
                            }
                        
                        VStack(alignment: .leading) {
                            Text("Teléfono")
                                .font(.title3)
                                .foregroundColor(.white)
                            
                            iPhoneNumberField(text: $registerInfo.phoneNumber)
                                .flagHidden(false)
                                .flagSelectable(true)
                                .prefixHidden(false)
                                .maximumDigits(10)
                                .foregroundColor(Color.white)
                                .placeholderColor(Color.white)
                                .padding(.leading, 10)
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1.5)
                                        .padding(.top, 40)
                                        .foregroundColor(.white)
                                )
                        }
                        .padding(.bottom, 25)
                        
                        HStack {
                            NavigationLink(destination: PayMethodView(showLogin: $showLogin, registerInfo: $registerInfo, isAuth: $isAuth)) {
                                Text("Continuar")
                                    .padding()
                                    .background(.white)
                                    .foregroundColor(.black)
                                    .bold()
                                    .cornerRadius(20)
                                    .opacity(disableNavigate ? 0.7 : 1)
                            }
                            .disabled(disableNavigate)
                            
                            Button(action: {showLogin.toggle()}) {
                                Text("Cancelar")
                                    .padding()
                                    .background(.red)
                                    .cornerRadius(20)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                    }
                    .padding(.vertical, 25)
                    .padding(.horizontal, 25)
                }
            }
        }
    }
}
