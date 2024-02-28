//
//  CommonSecureTextFld.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import SwiftUI

struct CommonSecureTextFld: View {
    @Binding var textFieldText: String
    var textFieldPlaceHolder: String
    @State private var isTextShow = false
    @Binding var textFldBorderColor : Color
    @Binding var isTextFldShake : Bool
    @State private var attempts = 0
    var body: some View {
        HStack {
            ZStack {
                if isTextShow {
                    TextField(textFieldPlaceHolder, text: $textFieldText)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 10)
                } else {
                    SecureField(textFieldPlaceHolder, text: $textFieldText)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 10)
                }
                HStack {
                    Spacer()
                    Button {
                        isTextShow.toggle()
                    } label: {
                        Image(systemName: isTextShow ? "eye" : "eye.slash")
                            .resizable()
                            .foregroundColor(.black)
                            .padding(.vertical,20)
                            .padding(.horizontal,15)
                    }.frame(width: 60)
                        .background(.white)
                }
            }
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
