//
//  CommonTextFld.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import SwiftUI

struct CommonTextFld: View {
    @Binding var textFieldText : String
    var textFieldPlaceHolder : String
    @Binding var textFldBorderColor : Color
    @Binding var isTextFldShake : Bool
    @State private var attempts = 0
    var body: some View {
        HStack {
            TextField(textFieldPlaceHolder, text: $textFieldText)
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
        }.frame(height: 60)
            .foregroundColor(.black)
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(textFldBorderColor, lineWidth: 1)
            )
            .contentShape(Rectangle())
            .modifier(Shake(animatableData: CGFloat(attempts)))
            .onChange(of: isTextFldShake, perform: { newValue in
                if newValue == true {
                    withAnimation {
                        attempts += 1
                    }
                    generateHapticFeedback()
                    isTextFldShake = false
                }
            })
    }
    
    private func generateHapticFeedback(){
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.prepare()
        generator.impactOccurred()
    }
    
}

