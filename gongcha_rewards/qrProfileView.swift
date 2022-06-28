//
//  qrProfileView.swift
//  gongcha_rewards
//
//  Created by Dhruvaa Saravanan on 2022-06-27.
//

import SwiftUI

struct qrProfileView: View {
    var body: some View {
        ZStack {
        Color("gongchaGrey").ignoresSafeArea()
        VStack {
            Spacer()
            Image(systemName: "qrcode")
                .font(.system(size: 300))
                .padding(.bottom, 100.0)
            Spacer()
        }.background(Color("gongchaGrey"))
    }
    }
}

struct qrProfileView_Previews: PreviewProvider {
    static var previews: some View {
        qrProfileView()
    }
}
