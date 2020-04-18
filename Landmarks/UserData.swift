//
//  UserData.swift
//  Landmarks
//
//  Created by Evan Smith on 4/18/20.
//  Copyright © 2020 Evan Smith. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
   @Published var showFavoritesOnly = false
   @Published var landmarks = landmarkData
}
