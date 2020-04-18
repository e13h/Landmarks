//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Evan Smith on 4/18/20.
//  Copyright © 2020 Evan Smith. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
   var body: some View {
      NavigationView {
         List(landmarkData) { landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
               LandmarkRow(landmark: landmark)
            }
         }
         .navigationBarTitle(Text(/*@START_MENU_TOKEN@*/"Landmarks"/*@END_MENU_TOKEN@*/))
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
