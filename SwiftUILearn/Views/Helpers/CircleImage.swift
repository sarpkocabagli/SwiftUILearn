//
//  CircleImage.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 9)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
