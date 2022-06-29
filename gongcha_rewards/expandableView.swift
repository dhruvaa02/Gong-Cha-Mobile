//
//  expandableView.swift
//  gongcha_rewards
//
//  Created by Dhruvaa Saravanan on 2022-06-29.
//

import SwiftUI

struct expandableView: View {
    var reward: String
    @State var isExpanded = false
    var body: some View {
        Button(action: {
            withAnimation(.easeOut) {
                isExpanded.toggle()
            }
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10.0).padding().foregroundColor(Color("royalRed"))
                    .shadow(radius: 10)
                
                
                VStack {
                    Text("\(reward)")
                        .foregroundColor(Color.white)
                        .padding(.leading, isExpanded ? 35 : 0)
                        .padding(.top, isExpanded ? 35 : 0)
                }.frame(width: 400, height: isExpanded ? 200 : 100, alignment: isExpanded ? .topLeading : .center)
            }
        })
    }
}

struct expandableView_Previews: PreviewProvider {
    static var previews: some View {
        expandableView(reward: "Test")
    }
}
