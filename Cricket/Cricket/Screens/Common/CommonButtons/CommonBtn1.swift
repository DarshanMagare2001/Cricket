//
//  CommonBtn1.swift
//  Cricket
//
//  Created by IPS-161 on 27/02/24.
//

import SwiftUI

struct CommonBtn1: View {
    var btnBackgroundColor : Color
    var btnForegroundColor : Color
    var btnText : String
    var btnAction : (()->())
    var body: some View {
        Button(action: {
            btnAction()
        }) {
            HStack{
                Spacer()
                Text(btnText)
                    .fontWeight(.semibold)
                    .font(.headline)
                    .padding(.vertical,20)
                Spacer()
            }.foregroundColor(btnForegroundColor)
                .background(btnBackgroundColor)
                .cornerRadius(10)
        }
    }
}

struct CommonBtn1_Previews: PreviewProvider {
    static var previews: some View {
        CommonBtn1(btnBackgroundColor: .white, btnForegroundColor: Color.appColorGreen, btnText: "Btn", btnAction:{})
    }
}
