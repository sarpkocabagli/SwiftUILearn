//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Birds")
                .font(.title)
                .fontWeight(.bold)
            HStack {
                Text("Eagle")
                    .font(.subheadline)
                Spacer()
                    .frame(width: 35)
                Text("Seagle")
                    .font(.subheadline)
            }
               
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
