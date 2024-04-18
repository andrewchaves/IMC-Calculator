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
            Text("IMC CALCULATOR")
                .bold()
                .padding(.top, 20)
            Spacer()
                RoundedRectangle(cornerRadius: 20)
                           .foregroundColor(.gray)
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
                                .background(.red)
                                .cornerRadius(4)
                        }
                        .padding(.top, 8) 
            Spacer()
        }.background(
            Color(.yellow)
        )
    }
}

