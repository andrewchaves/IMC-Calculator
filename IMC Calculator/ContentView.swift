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
    @State private var imcValue: Double = 0.0
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("IMC CALCULATOR")
                .bold()
                .foregroundColor(Color("TextColor"))
                .font(.system(size: 38))
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
                imcValue = IMCCalculator.calculateIMC(weight: Double(personWeight),
                                                      height: Double(personHeight))
            }) {
                Text("Calcular")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("TextColor"))
                    .cornerRadius(4)
            }
            .padding(.top, 8)
            Spacer()
            Text("Resultado: \(imcValue)")
        }.background(
            Color(Color("BackgroundColor"))
        )
    }
}

class IMCCalculator {
    
    static func calculateIMC(weight: Double?, height: Double?) -> Double {
        if let weight = weight, let height = height {
            guard height > 0 else {
                return 0.0
            }
            let imc = weight / (height * height)
            let multiplier = 100.0
            return floor(imc * multiplier) / multiplier
        }
        return 0.0
    }
    
}
