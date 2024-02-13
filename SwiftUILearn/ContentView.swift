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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Black Eagle")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .padding(.top, 10.0)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
