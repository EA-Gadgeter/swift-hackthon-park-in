//
//  RegisterView.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI
import iPhoneNumberField

struct RegisterView: View {
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    @State var phone = ""
    
    var body: some View {
        ZStack {
            Color("GeneralBackground")
                .ignoresSafeArea()
            
            VStack {
                LottieComponent(name: "63800-car-animation", loopMode: .loop, contentMode: .scaleAspectFill)
                    .ignoresSafeArea()
                
                VStack {
                    FormField(text: $email, icon: "at", label: "Correo electrónico")
                        .padding(.bottom, 25)
                    
                    PasswordField(password: $password, label: "Contraseña")
                        .padding(.bottom, 25)
                    
                    PasswordField(password: $confirmPassword, label: "Confirmar contraseña")
                        .padding(.bottom, 25)
                    
                    VStack(alignment: .leading) {
                        Text("Teléfono")
                            .font(.title3)
                            .foregroundColor(.white)
                        
                        iPhoneNumberField(text: $phone)
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
                    
                    NavigationLink(destination: PayMethodView()) {
                        Text("Continuar")
                            .padding()
                            .background(.white)
                            .foregroundColor(.black)
                            .bold()
                            .cornerRadius(20)
                    }
                }
                .padding(.vertical, 25)
                .padding(.horizontal, 25)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}