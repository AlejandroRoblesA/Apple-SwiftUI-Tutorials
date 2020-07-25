//
//  UserData.swift
//  Landmarks
//
//  Created by Omar Alejandro Robles Altamirano on 25/07/20.
//  Copyright © 2020 Omar Alejandro Robles Altamirano. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject{
    @Published var showFavaoritesOnly = false
    @Published var landmarks = landmarkData
}
