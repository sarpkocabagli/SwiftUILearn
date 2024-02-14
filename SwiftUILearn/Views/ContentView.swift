//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
