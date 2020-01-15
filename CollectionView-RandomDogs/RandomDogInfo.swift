//
//  RandomDogInfo.swift
//  CollectionView-RandomDogs
//
//  Created by Alex Paul on 1/14/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import Foundation

typealias DogImage = String

struct RandomDogInfo: Decodable {
  let message: [DogImage]
}
