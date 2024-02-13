//
//  CircleImage.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Black_eagle")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 9)
    }
}

#Preview {
    CircleImage()
}
