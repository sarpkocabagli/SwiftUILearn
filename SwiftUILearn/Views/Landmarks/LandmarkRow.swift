//
//  LandmarkRow.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50.0, height: 50.0)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                
                Image(systemName: "star.fill")
//                    .foregroundColor(Color.yellow)
                    .foregroundStyle(.yellow)
                
            }
            
        }
    }
}

#Preview("Landmarks") {
    let landmarks = ModelData().landmarks
    return Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
