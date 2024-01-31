//
//  ShimmerEffectView.swift
//  ShimmerEffect
//
//  Created by ꧁☆༒☬MoʜɩtToɱɘʀ☬༒☆꧂ on 31/01/24.
//

import SwiftUI

struct ShimmerEffectView: View {
    var body: some View {
         VStack {
             ShimmerEffect()
             ShimmerEffect()
             ShimmerEffect()
         }
         .frame(maxWidth: .infinity, maxHeight: .infinity)
         .ignoresSafeArea()
        // .background(.black)
     }
     
     @ViewBuilder
     private func ShimmerEffect() -> some View {
         VStack {
             HStack {
                ShimmerView()
                     .cornerRadius(30)
                     .frame(width: 60, height: 60)
                 
                 VStack {
                     ShimmerView()
                          .cornerRadius(5)
                          .frame(height: 20)
                     ShimmerView()
                          .cornerRadius(5)
                          .frame(height: 20)
                 }
             }
             ShimmerView()
                  .cornerRadius(5)
                  .frame(height: 150)
         }
     }
}

#Preview {
    ShimmerEffectView()
}
