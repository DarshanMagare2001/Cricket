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
                .stroke(Color(UIColor.systemGray4), lineWidth: 1)
        )
        .contentShape(Rectangle())
    }
}
