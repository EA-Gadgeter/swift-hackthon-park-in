//
//  ContentView.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var showLogin = true
    
    var body: some View {
        if(showLogin) {
            ZStack {
                Color("GeneralBackground")
                    .ignoresSafeArea()
                
                VStack {
                    
                    LottieComponent(name: "93653-b-school", loopMode: .loop, contentMode: .scaleAspectFill)
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("Inicia Sesión")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                        
                        FormField(text: $email, icon: "at", label: "Correo electrónico")
                            .padding(.bottom)
                        
                        PasswordField(password: $password, label: "Contraseña")
                            .padding(.bottom, 10)
                        
                        NavigationLink(destination: EmptyView()) {
                            HStack {
                                Image(systemName: "arrow.right.circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.white)
                                    .bold()
                                
                                Text("Log In")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    . bold()
                            }
                        }
                        .padding(.bottom, 30)
                        
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "g.circle.fill")
                                    .foregroundColor(.white)
                                    .bold()
                                
                                Text("Continua con Google")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .padding(12.5)
                            .background(.red)
                            .cornerRadius(5)
                        }
                        .padding(.bottom, 5)
                        
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "f.square.fill")
                                    .foregroundColor(.white)
                                    .bold()
                                
                                Text("Continua con Facebook")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .padding(12.5)
                            .background(.blue)
                            .cornerRadius(5)
                        }
                        .padding(.bottom, 5)
                        
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "apple.logo")
                                    .foregroundColor(.white)
                                    .bold()
                                
                                Text("Continua con Apple")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .padding(12.5)
                            .background(.black)
                            .cornerRadius(5)
                        }
                        .padding(.bottom, 10)
                        
                        Text("Si no tienes una cuenta...")
                            .foregroundColor(.white)
                        
                        Button(action: {showLogin.toggle()}) {
                            Text("Regístrate")
                                .foregroundColor(.white)
                                .font(.title3)
                                .bold()
                                .underline()
                        }
                    }
                    .padding(.horizontal, 25)
                }
            }
        } else {
            RegisterView(showLogin: $showLogin)
                .transition(.move(edge: .bottom))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
