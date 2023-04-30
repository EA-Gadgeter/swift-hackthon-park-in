//
//  PasswordField.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct PasswordField: View {
    @Binding var password: String
    @State var showPassword = false
    @State var eyeIcon = "eye.slash"
    let label: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.title3)
                .foregroundColor(.white)
            
            HStack(spacing: 0) {
                Image(systemName: "lock.fill")
                    .foregroundColor(.white)
                    .overlay(
                        Rectangle()
                            .frame(height: 1.5)
                            .padding(.top, 40)
                            .foregroundColor(.white)
                    )
                
                if (showPassword) {
                    TextField("", text: $password)
                        .padding(.leading, 10)
                        .foregroundColor(.white)
                        .overlay(
                            Rectangle()
                                .frame(height: 1.5)
                                .padding(.top, 40)
                                .foregroundColor(.white)
                        )
                } else {
                    SecureField("", text: $password)
                        .padding(.leading, 10)
                        .foregroundColor(.white)
                        .overlay(
                            Rectangle()
                                .frame(height: 1.5)
                                .padding(.top, 40)
                                .foregroundColor(.white)
                        )
                }
                
                Button(action: {
                    showPassword.toggle()
                    if(eyeIcon == "eye.slash") {
                        eyeIcon = "eye"
                    } else {
                        eyeIcon = "eye.slash"
                    }
                }) {
                    Image(systemName: eyeIcon)
                        .foregroundColor(.white)
                }
                .overlay(
                    Rectangle()
                        .frame(height: 1.5)
                        .padding(.top, 40)
                        .foregroundColor(.white)
                )
            }
            .frame(height: 40)
        }
    }
}
