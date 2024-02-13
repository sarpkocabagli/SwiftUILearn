//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300.0)
            
            CircleImage()
                .padding(.bottom, -100)
                .offset(x: 0, y: -100.0)
            
            VStack (alignment: .leading) {
                Text("Animals")
                    .font(.title)
                    .fontWeight(.bold)
                HStack {
                    Text("Black Eagle")
                    Spacer()
//                        .frame(width: 150)
                    Text("Bird")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                    .frame(height: 10.0)
                Text("Besiktas Park")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Home of the Black Eagle")
//                    .font(.subheadline)
            }
            
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
