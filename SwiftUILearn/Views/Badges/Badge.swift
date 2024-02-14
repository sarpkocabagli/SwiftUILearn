//
//  Badgeçswıft.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/14/24.
//

import SwiftUI

struct Badge: View {
    
    var badgeSymbols: some View {
        ForEach(0..<64) { index in
            RotatedBadgeSymbol(angle: .degrees(Double(index) / Double(8)) * 360)
        }
            .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1 / 4 , anchor: .top)
//                    .scaleEffect(CGSize(width: 0.5, height: 0.5), anchor: .center)
                    .position(x: geometry.size.width / 2, y: (0.75) * geometry.size.height)
            }

        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
