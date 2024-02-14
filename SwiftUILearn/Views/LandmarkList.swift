//
//  LandmarkList.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct LandmarkList: View {
    
//    @State private var showFavoritesOnly = false
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List(filteredLandmarks) { landmark in
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
