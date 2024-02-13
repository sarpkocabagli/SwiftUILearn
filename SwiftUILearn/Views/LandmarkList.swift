//
//  LandmarkList.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks) { landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                //            LandmarkRow(landmark: landmarks[0])
                //            LandmarkRow(landmark: landmarks[1])
                
            }
            .navigationTitle("Landmarks")
        } detail: {

        }
    }
}


#Preview {
    LandmarkList()
}
