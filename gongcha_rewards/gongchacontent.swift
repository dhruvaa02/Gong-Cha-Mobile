//
//  ContentView.swift
//  gongcha
//
//  Created by Dhruvaa Saravanan on 2022-05-23.
//

import SwiftUI

struct gongChaContentView: View {

    var points = 100
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("gongchaGrey").ignoresSafeArea()
                VStack{
                    HStack {
                        Text("Gong cha")
                            .padding(.leading, 25.0)
                            .font(.system(size: 50, weight: .thin, design: .rounded))
                        Spacer()
                    }
                    NavigationLink(destination: rewardsView(), label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0).padding().foregroundColor(Color("royalRed"))
                                .frame(width: 400, height: 225, alignment: .center)
                                .shadow(radius: 10)
                            VStack{
                                Text("Rewards Points")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22, weight: .semibold, design: .default))
                                    .padding(.bottom, 1)
                                Text("\(100)")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 20, weight: .light, design: .default))
                            }
                        }
                    })
                    
                    Spacer()
                    
                }
            }
        }
    }
}
