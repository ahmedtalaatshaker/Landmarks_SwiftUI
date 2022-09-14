//
//  LandMarkListViewModel.swift
//  LandmarksSwiftUI
//
//  Created by Ahmed Talaat on 12/09/2022.
//

import Foundation

class LandMarkListViewModel: ObservableObject {
    @Published var landmarks:Landmarks = ResourceLoader().loadLandmarks()
    
    func filterFavoriteLandmarks() -> Landmarks{
        return landmarks.filter({ $0.isFavorite })
    }

    func allLandmaks() -> Landmarks {
        return landmarks
    }
    
    func updateLandmark(of landmark: Landmark){
        for landmarkIndex in 0..<landmarks.count {
            if landmarks[landmarkIndex].id == landmark.id {
                landmarks[landmarkIndex].isFavorite.toggle()
                break
            }
        }
    }
}
