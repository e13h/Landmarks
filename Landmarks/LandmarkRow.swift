//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Evan Smith on 4/16/20.
//  Copyright © 2020 Evan Smith. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
   var landmark: Landmark
   
   var body: some View {
      HStack {
         landmark.image
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
         Text(landmark.name)
         Spacer()
      }
   }
}

struct LandmarkRow_Previews: PreviewProvider {
   static var previews: some View {
      Group {
         LandmarkRow(landmark: landmarkData[0])
         LandmarkRow(landmark: landmarkData[1])
      }
      .previewLayout(.fixed(width: 300, height: 70))
   }
}
