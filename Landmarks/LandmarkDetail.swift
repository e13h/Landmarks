//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Evan Smith on 4/16/20.
//  Copyright © 2020 Evan Smith. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
      VStack {
         MapView()
            .frame(height: 300.0)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
         
         CircleImage()
            .padding(.bottom, -130.0)
            .offset(y: /*@START_MENU_TOKEN@*/-130.0/*@END_MENU_TOKEN@*/)
         
         VStack(alignment: .leading) {
            Text("Turtle Rock")
               .font(.title)
            HStack {
               Text("Joshua Tree National Park")
                  .font(.subheadline)
               Spacer()
               Text("California")
                  .font(.subheadline)
            }
         }
         .padding()
         
         Spacer()
      }
         
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
