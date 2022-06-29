//
//  rewardsView.swift
//  gongcha
//
//  Created by Dhruvaa Saravanan on 2022-05-23.
//

import SwiftUI

struct rewardsView: View {
    var body: some View {
        ZStack{
            Color("gongchaGrey").ignoresSafeArea()
            VStack {
                ForEach(Rewards.allCases, id: \.self){ rewardToShow in
                    expandableView(reward: rewardToShow.rawValue)
                }
            }
        }
    }
}


struct rewardsView_Previews: PreviewProvider {
    static var previews: some View {
        rewardsView()
    }
}
