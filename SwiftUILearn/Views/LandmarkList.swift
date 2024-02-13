//
//  LandmarkList.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
            
            }
    }
}


#Preview {
    LandmarkList()
}
