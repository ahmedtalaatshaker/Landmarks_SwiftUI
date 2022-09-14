//
//  ContentView.swift
//  LandmarksSwiftUI
//
//  Created by Ahmed Talaat on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            LandMarkList()
                .navigationTitle("Landmarks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
