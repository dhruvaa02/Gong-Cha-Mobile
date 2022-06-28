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
                    
                    HStack {
                        
                    NavigationLink(destination: qrProfileView(), label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0).padding().foregroundColor(Color("royalRed"))
                                .frame(width: 100, height: 100, alignment: .center)
                                .shadow(radius: 10)
                            Image(systemName: "qrcode.viewfinder")
                                .font(.system(size: 35))
                                .foregroundColor(Color.white)
                        }
                    })
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0).padding().foregroundColor(Color("royalRed"))
                            .frame(width: 100, height: 100, alignment: .center)
                            .shadow(radius: 10)
                        Link(destination: URL(string: "https://gong-cha.ca/menu/")!, label: {
                            Image(systemName: "menucard")
                                .font(.system(size: 35))
                                .foregroundColor(Color.white)
                        })
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0).padding().foregroundColor(Color("royalRed"))
                            .frame(width: 100, height: 100, alignment: .center)
                            .shadow(radius: 10)
                        Link(destination: URL(string: "https://gong-cha.ca/franchises/")!, label: {
                            Image(systemName: "phone.bubble.left.fill")
                                .font(.system(size: 35))
                                .foregroundColor(Color.white)
                        })
                    }
                    
                }
                
                Spacer()
            }
        }
    }
}
}


struct gongChaContentView_Previews: PreviewProvider {
    static var previews: some View {
        gongChaContentView()
    }
}
