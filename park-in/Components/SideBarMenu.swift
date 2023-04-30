//
//  SideBarMenu.swift
//  park-in
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct SideBarMenu: View {
    @Binding var menuOpened: Bool
    
    var body: some View {
        ZStack {
            Color(UIColor(red:33/255.0, green:33/255.0, blue: 33/255.0, alpha: 1))
            VStack(alignment: .leading) {
                HStack {
                    VStack (alignment:.leading){
                        Text("Hola")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .bold()
                        Text("Usuario!")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .bold()
                    }
                    Spacer()
                    Button(action: {menuOpened.toggle()}) {
                        Image(systemName: "line.horizontal.3")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 10)
                /*HStack(alignment: .top){
                    VStack(alignment: .center){
                        Image(systemName: "person")
                            .foregroundColor(.white)
                            .frame(width: 25, height: 10)
                            .padding(5)
                            .background(Color.gray)
                            .clipShape(Circle())
                            .font(.system(size: 15))
                        Text("Datos de perfil")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                    VStack(alignment: .center){
                        Image(systemName: "headphones")
                            .foregroundColor(.white)
                            .frame(width: 10, height: 10)
                            .padding(5)
                            .background(Color.gray)
                            .clipShape(Circle())
                            .font(.system(size: 15))
                        Text("Centro de ayuda")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                    .frame(width: 30, height: 60)
                    VStack(alignment: .center){
                        Image(systemName: "book")
                            .foregroundColor(.white)
                            .frame(width: 10, height: 10)
                            .padding(5)
                            .background(Color.gray)
                            .clipShape(Circle())
                            .font(.system(size: 15))
                        Text("Historial de pedidos")
                            .foregroundColor(.white)
                            .font(.system(size:7))
                    }
                    .frame(width: 30, height: 60)
                    
                    VStack(alignment: .center){
                        Image(systemName: "creditcard")
                            .foregroundColor(.white)
                            .frame(width: 10, height: 10)
                            .padding(5)
                            .background(Color.gray)
                            .clipShape(Circle())
                            .font(.system(size: 15))
                        Text("Métodos de pago")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                    .frame(width: 35, height: 60)
                    .padding(.bottom, 8)
                }
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.3).blur(radius: 7))
                .cornerRadius(7)
                .padding(.bottom, 10)
                 */
                ScrollView() {
                    VStack(alignment: .leading){
                        Text("Información")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                        VStack {
                            HStack (){
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                Text("Quiero convertirme en arrendador")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                            .bold()
                            HStack(){
                                Image(systemName: "info")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                Text("Términos y condiciones")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                            .bold()
                            HStack(){
                                Image(systemName: "bell")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                Text("Notificaciones")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                            .bold()
                        }
                    }
                    .padding(.bottom, 15)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Promociones y puntos")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                        VStack(alignment: .leading, spacing: 3) {
                            HStack (){
                                Image(systemName: "percent")
                                    .foregroundColor(.white)
                                    .font(.system(size:25))
                                Text("Cupones")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                            .bold()
                            HStack(){
                                Image(systemName: "bitcoinsign.circle")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                Text("Puntos acumulados")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                            .bold()
                        }
                    }
                    .padding(.bottom, 15)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Guardado")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                        VStack() {
                            HStack (){
                                Image(systemName: "location")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))

                                Text("Direcciones guardadas")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                            HStack(){
                                Image(systemName: "star")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                Text("Lugares favoritos")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                        }
                    }
                    .padding(.bottom, 15)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Opciones")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                            .bold()
                        VStack() {
                            HStack (){
                                Image(systemName: "gear")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                Text("Configuración")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                            HStack(){
                                Image(systemName: "pip.exit")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                Text("Cerrar sesíón")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.gray.blur(radius: 10))
                            .cornerRadius(7)
                        }
                    }
                    .padding(.bottom, 15)
                }
                .scrollIndicators(.hidden)
            }
            .padding(.top, 80)
            .padding(.horizontal, 25)
        }
    }
}

struct SideMenu: View {
    let width: CGFloat
    @Binding var menuOpened: Bool
    let toggleMenu: () -> Void
    
    var body: some View {
        ZStack {
            withAnimation(.easeIn.delay(0.5)){
                GeometryReader { _ in
                    EmptyView()
                }
                .background(Color.gray.opacity(0.5))
                .opacity(self.menuOpened ? 1 : 0)
                //withAnimation(.easeIn.delay(0.5))
                //.animation(Animation.easeIn.delay(0.5))
                .onTapGesture {
                    self.toggleMenu()
                }
            }
            
            HStack {
                SideBarMenu(menuOpened: $menuOpened)
                    .frame(width: width)
                    .offset(x:menuOpened ? 0 : -width)
                    .animation(.default)
                Spacer()
            }
        }
    }
}
