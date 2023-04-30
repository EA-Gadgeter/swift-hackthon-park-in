//
//  FormField.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct FormField: View {
    @Binding var text: String
    var icon: String = ""
    var label: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.title3)
                .foregroundColor(.white)
            
            HStack(spacing: 0) {
                Image(systemName: icon)
                    .foregroundColor(.white)
                    .overlay(
                        Rectangle()
                            .frame(height: 1.5)
                            .padding(.top, 40)
                            .foregroundColor(.white)
                    )
                
                TextField("", text: $text)
                    .padding(.leading, 10)
                    .foregroundColor(.white)
                    .textInputAutocapitalization(.never)
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
