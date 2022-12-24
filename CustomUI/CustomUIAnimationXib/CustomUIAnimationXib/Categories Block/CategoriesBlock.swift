//
//  CategoriesBlock.swift
//  CustomUIAnimationXib
//
//  Created by Владимир Скрипченко on 23.12.2022.
//

import UIKit

protocol CategoriesBlockDelegate {
    func categoriesBlockButtonPressed()
}

class CategoriesBlock: BaseUI {

    @IBAction func categoriesButtonPressed(_ sender: Any) {
        delegate?.categoriesBlockButtonPressed()
    }
    
    @IBOutlet weak var imageViewCategories: UIImageView!
 
    @IBOutlet weak var categoriesBlockLabel: UILabel!
    
    var delegate: CategoriesBlockDelegate?
    
    func configureCategories(with text: String, image: UIImage) {
        self.categoriesBlockLabel.text = text
        self.imageViewCategories.image = image
    }

}
