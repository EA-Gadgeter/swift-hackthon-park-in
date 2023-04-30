//
//  SelectPension.swift
//  park-in
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct SelectPension: View {
    @Binding var showSelectPension: Bool
    
    var body: some View{
        ZStack {
            VStack {
                HStack {
                    Circle()
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2)
                    .frame(width: 30, height: 30)
                    VStack(alignment: .leading){
                        Text("Horas")
                            .foregroundColor(.gray)
                        Text("¡Te sacamos de tu apuro!")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    HStack(spacing: 0){
                        Text("-")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .border(.black, width: 1).cornerRadius(2)
                        Text("1")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .cornerRadius(5)
                        Text("+")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .border(.black, width: 1).cornerRadius(2)
                    }
                }
                HStack {
                    Circle()
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2)
                    .frame(width: 30, height: 30)
                    VStack(alignment: .leading){
                        Text("Días")
                            .foregroundColor(.gray)
                        Text("Para reservas con anticipación")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    HStack(spacing: 0){
                        Text("-")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .border(.black, width: 1).cornerRadius(2)
                        Text("1")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .cornerRadius(5)
                        Text("+")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .border(.black, width: 1).cornerRadius(2)
                    }
                }
                HStack {
                    Circle()
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2)
                    .frame(width: 30, height: 30)
                    VStack(alignment: .leading){
                        Text("Pensión")
                        Text("líbrate de preocupaciones")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    HStack(spacing: 0){
                        Text("-")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .border(.black, width: 1).cornerRadius(2)
                        Text("1")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .cornerRadius(5)
                        Text("+")
                            .frame(width: 30, height: 30)
                            .background(Color.gray)
                            .border(.black, width: 1).cornerRadius(2)
                    }
                }
                
                HStack(spacing: 15) {
                    Button(action: {}) {
                        Text("Reservar")
                            .padding()
                            .background(Color("PressCashIcon"))
                            .foregroundColor(.white)
                            .bold()
                            .cornerRadius(20)
                    }
                    
                    Button(action: {showSelectPension.toggle()}) {
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
        //7.padding()
        //.frame(width: 350)
        //.background(Color(.darkGray).blur(radius: 60))
        //.cornerRadius(20)
    }
}
