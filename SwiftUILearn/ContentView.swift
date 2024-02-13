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
            Text("Animals")
                .font(.title)
                .fontWeight(.bold)
            HStack {
                Text("Black Eagle")
                    .font(.subheadline)
                Spacer()
                    .frame(width: 35)
                Text("Bird")
                    .font(.subheadline)
            }
               
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
