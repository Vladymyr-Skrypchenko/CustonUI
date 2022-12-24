//
//  FeaturedBlockViewController.swift
//  CustomUIAnimationXib
//
//  Created by Владимир Скрипченко on 21.12.2022.
//

import UIKit

class FeaturedBlock: BaseUI {
  
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func configure(with text: String, textSecond: String, image: UIImage) {
        self.nameLabel.text = text
        self.timeLabel.text = textSecond
        self.imageView.image = image
    }
}

