//
//  ContentView.swift
//  IMC Calculator
//
//  Created by Andrew Vale on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var personHeight: String = ""
    @State private var personWeight: String = ""
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("IMC CALCULATOR")
                .bold()
//                .padding(.top, 20)
                .foregroundColor(Color("TextColor"))
                .font(.system(size: 38))
//            Spacer()
                RoundedRectangle(cornerRadius: 20)
                           .foregroundColor(Color("DialogColor"))
                           .padding()
                           .frame(height: 200)
                           .overlay(
                            VStack(alignment: .center, spacing: 20) {
                                        TextField("Digite sua altura em centímetros", text: $personHeight)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .padding(.horizontal)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                        TextField("Digite seu peso em quilos", text: $personWeight)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .padding(.horizontal)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                        
                                    }
                           )
            
            Button(action: {
                            //todo
                        }) {
                            Text("Calcular")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color("TextColor"))
                                .cornerRadius(4)
                        }
                        .padding(.top, 8) 
            Spacer()
        }.background(
            Color(Color("BackgroundColor"))
        )
    }
}

