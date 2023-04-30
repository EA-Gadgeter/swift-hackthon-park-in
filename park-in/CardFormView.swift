//
//  CardFormView.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct CardFormView: View {    
    @Binding var registerInfo: RegisterInfo
    @Binding var showForm: Bool
    @Binding var isAuth: Bool
    
    @State var disableRegister = true
    
    func registerUser(){
        
        Auth.auth().createUser(withEmail: registerInfo.email, password: registerInfo.password) {
            authResult, error in
            
            if let error =  error {
                print(error)
                return
            }
            
            if let authResult = authResult {
                let db = Firestore.firestore()
                db.collection("users").document(authResult.user.uid).setData([
                    "email": registerInfo.email,
                    "phoneNumber": registerInfo.phoneNumber,
                    "creditCard": registerInfo.creditCard,
                    "cardEndDate": registerInfo.cardEndDate,
                    "cardCVV": registerInfo.cardCVV,
                    "userName": registerInfo.userName,
                    "userAddress": registerInfo.userAddress,
                    "userCity": registerInfo.userCity,
                    "CP" : registerInfo.CP,
                ]) { err in
                    if let err = err {
                        print("Error writing document: \(err)")
                    } else {
                        print("Document successfully written!")
                    }
                }
                Auth.auth().signIn(withEmail: registerInfo.email, password: registerInfo.password) { authResult, error in
                    if let error = error {
                        print(error)
                    } else {
                        isAuth.toggle()
                    }
                }
            }
        }
    }
    
    func validateCard() {
        if(
            registerInfo.creditCard.isEmpty ||
            registerInfo.cardEndDate.isEmpty ||
            registerInfo.cardCVV.isEmpty ||
            registerInfo.userName.isEmpty ||
            registerInfo.userAddress.isEmpty ||
            registerInfo.userCity.isEmpty ||
            registerInfo.CP.isEmpty
        ) {
            disableRegister = true
            return
        }
        
        if
            (
                registerInfo.creditCard.count != 16 ||
                registerInfo.cardEndDate.count != 4 ||
                registerInfo.cardCVV.count != 3 ||
                registerInfo.CP.count != 5
        ){
            disableRegister = true
            return
        }
                
        disableRegister = false
    }
    
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
                        FormField(text: $registerInfo.creditCard.max(17), icon: "creditcard.fill", label: "No. de Tarjeta")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.creditCard) {
                                text in
                                validateCard()
                            }
                        
                        FormField(text: $registerInfo.cardEndDate.max(5), icon: "hourglass", label: "Caducidad")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.cardEndDate) {
                                text in
                                validateCard()
                            }
                        
                        FormField(text: $registerInfo.cardCVV.max(4), icon: "c.circle.fill", label: "CVV")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.cardCVV) {
                                text in
                                validateCard()
                            }
                        
                        FormField(text: $registerInfo.userName, icon: "person.fill", label: "Titular")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.userName) {
                                text in
                                validateCard()
                            }
                        
                        FormField(text: $registerInfo.userAddress, icon: "house.fill", label: "Dirección")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.userAddress) {
                                text in
                                validateCard()
                            }
                        
                        FormField(text: $registerInfo.userCity, icon: "building.2.fill", label: "Ciudad")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.userCity) {
                                text in
                                validateCard()
                            }
                        
                        FormField(text: $registerInfo.CP.max(6), icon: "signpost.right.fill", label: "CP")
                            .padding(.bottom, 25)
                            .onChange(of: registerInfo.CP) {
                                text in
                                validateCard()
                            }
                        
                        HStack {
                            Button(action: {registerUser()}) {
                                Text("Continuar")
                                    .padding()
                                    .background(.white)
                                    .foregroundColor(.black)
                                    .bold()
                                    .cornerRadius(20)
                                    .opacity(disableRegister ? 0.7 : 1)
                            }
                            .disabled(disableRegister)
                            
                            Button(action: {showForm.toggle()}) {
                                Text("Cancelar")
                                    .padding(12.5)
                                    .background(.red)
                                    .cornerRadius(20)
                                    .foregroundColor(.white)
                                    .bold()
                            }
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
