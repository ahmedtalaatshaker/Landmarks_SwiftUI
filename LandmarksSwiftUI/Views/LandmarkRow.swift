//
//  Landmarkrow.swift
//  LandmarksSwiftUI
//
//  Created by Ahmed Talaat on 11/09/2022.
//

import SwiftUI

struct LandmarkRow: View {
    @State var landmark: Landmark
    @State var action: () -> ()
    
    var body: some View {
        HStack{
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)

            
            Text(landmark.name)
            
            Spacer()

            Button {
                landmark.isFavorite.toggle()
                action()
            } label: {
                landmark.isFavorite ?
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow) : Image(systemName: "star")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = LandMarkListViewModel()

        LandmarkRow(landmark: viewModel.landmarks[2], action: {
            print("Hi")
        }).previewLayout(.fixed(width: 300, height: 70))
    }
}
