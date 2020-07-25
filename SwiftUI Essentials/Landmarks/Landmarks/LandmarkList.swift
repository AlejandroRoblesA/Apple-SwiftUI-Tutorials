//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Omar Alejandro Robles Altamirano on 23/07/20.
//  Copyright © 2020 Omar Alejandro Robles Altamirano. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        NavigationView{
            List{
                
                Toggle(isOn: $userData.showFavaoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(userData.landmarks){ landmark in
                    if !self.userData.showFavaoritesOnly || landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
        .navigationBarTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
            .environmentObject(UserData())
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
        }
    }
}
