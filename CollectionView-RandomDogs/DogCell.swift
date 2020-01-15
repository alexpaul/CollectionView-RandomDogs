//
//  DogCell.swift
//  CollectionView-RandomDogs
//
//  Created by Alex Paul on 1/14/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit
import ImageKit // has getImage() which is our extension on UIIMageView

class DogCell: UICollectionViewCell {
  
  @IBOutlet weak var dogImageView: UIImageView!
  
  public func configureCell(with dogImage: DogImage) {
    dogImageView.getImage(with: dogImage) { [weak self] (result) in
      switch result {
      case .failure:
        DispatchQueue.main.async {
          self?.dogImageView.image = UIImage(systemName: "exclamationmark-triangle")
        }
      case .success(let image):
        DispatchQueue.main.async {
          self?.dogImageView.image = image
        }
      }
    }
  }
    
}
