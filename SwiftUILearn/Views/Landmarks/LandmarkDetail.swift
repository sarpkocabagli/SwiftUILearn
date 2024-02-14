//
//  LandmarkDetail.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        
        @Bindable var modelData = modelData
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300.0)
            
            CircleImage(image: landmark.image)
                .padding(.bottom, -100)
                .offset(x: 0, y: -100.0)
            
            VStack (alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    .fontWeight(.bold)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
//                        .frame(width: 150)
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                    .frame(height: 10.0)
                
                Text("About \(landmark.name)")
                    .font(.title2)
                    .fontWeight(.bold)
                Text(landmark.description)
//                    .font(.subheadline)
            }
            
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: ModelData().landmarks[0])
        .environment(modelData)
}
