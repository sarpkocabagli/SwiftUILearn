//
//  RotatedBadgeSymbol.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/14/24.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle : Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60.0)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 0))
}
