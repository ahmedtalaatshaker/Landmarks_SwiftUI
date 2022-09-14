//
//  LandMarkList.swift
//  LandmarksSwiftUI
//
//  Created by Ahmed Talaat on 11/09/2022.
//

import SwiftUI

struct LandMarkList: View {
    @StateObject private var viewModel = LandMarkListViewModel()
    @State var isFavoriteOnly = false
    @State var isLoading = false

    var body: some View {
        List{
            Toggle(isOn: $isFavoriteOnly) {
                Text("Favorites Only")
            }
            
            let landmarks = handleFavorites()
            ForEach(landmarks){ landmark in
                LandmarkRow(landmark: landmark, action: {
                    viewModel.updateLandmark(of: landmark)
                })
            }
        }
        .animation(.spring(), value: isFavoriteOnly)
    }
    
    private func handleFavorites() -> Landmarks {
        return isFavoriteOnly ? viewModel.filterFavoriteLandmarks() : viewModel.allLandmaks()
    }
    
    private func refreshLandmarks(){

    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandMarkList()
        }
    }
}
