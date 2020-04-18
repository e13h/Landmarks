//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Evan Smith on 4/18/20.
//  Copyright © 2020 Evan Smith. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
   @State var showFavoritesOnly = false

   var body: some View {
      NavigationView {
         List {
            Toggle(isOn: $showFavoritesOnly) {
               Text("Favorites only")
            }
            ForEach(landmarkData) { landmark in
               if !self.showFavoritesOnly || landmark.isFavorite {
                  NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                     LandmarkRow(landmark: landmark)
                  }
               }
            }
         }
         .navigationBarTitle(Text("Landmarks"))
      }
   }
}

struct LandmarkList_Previews: PreviewProvider {
   static var previews: some View {
      ForEach(["iPhone SE", "iPhone 11"], id: \.self) { deviceName in
         LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
      }
   }
}
