//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Evan Smith on 4/16/20.
//  Copyright © 2020 Evan Smith. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
   var landmark: Landmark

   var body: some View {
      VStack {
         MapView(coordinate: landmark.locationCoordinate)
            .frame(height: 300.0)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
         
         CircleImage(image: landmark.image)
            .padding(.bottom, -130.0)
            .offset(y: /*@START_MENU_TOKEN@*/-130.0/*@END_MENU_TOKEN@*/)
         
         VStack(alignment: .leading) {
            Text(landmark.name)
               .font(.title)
            HStack {
               Text(landmark.park)
                  .font(.subheadline)
               Spacer()
               Text(landmark.state)
                  .font(.subheadline)
            }
         }
         .padding()
         
         Spacer()
      }
      .navigationBarTitle(Text(landmark.name), displayMode: .inline)
   }
}

struct LandmarkDetail_Previews: PreviewProvider {
   static var previews: some View {
      LandmarkDetail(landmark: landmarkData[0])
   }
}
