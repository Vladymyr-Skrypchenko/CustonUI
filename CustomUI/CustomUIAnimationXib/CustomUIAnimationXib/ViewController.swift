//
//  ViewController.swift
//  CustomUIAnimationXib
//
//  Created by Владимир Скрипченко on 21.12.2022.
//

import UIKit
import Lottie

class ViewController: UIViewController, CategoriesBlockDelegate {

     @IBOutlet weak var topAnimationCategories: LottieAnimationView!
     @IBOutlet weak var topLeftFeaturedBlock: FeaturedBlock!
     @IBOutlet weak var bottomLeftFeaturedBlock: LottieAnimationView!
     @IBOutlet weak var topRightFeaturedBlock: LottieAnimationView!
     @IBOutlet weak var bottomRightFeaturedBlock: FeaturedBlock!
     
     @IBOutlet weak var bottomCategoriesBlock: CategoriesBlock!
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLeftFeaturedBlock.configure(with: "Milky way", textSecond: "5 min", image: UIImage(named:"04")!)
        // topRightFeaturedBlock.configure(with: "Moon 2", textSecond: "10 min", image: UIImage(named:"12")!)
        // bottomLeftFeaturedBlock.configure(with: "Milky way", textSecond: "3 min", image: UIImage(named:"04")!)
        bottomRightFeaturedBlock.configure(with: "Saturn", textSecond: "1 min", image: UIImage(named:"05")!)
         
         topAnimationCategories.loopMode = .loop
         topAnimationCategories.animationSpeed = 1.5
         topAnimationCategories.play()
         
         bottomCategoriesBlock.configureCategories(with: "Galaxy", image: UIImage(named:"galaxyCategories")!)
         
         topRightFeaturedBlock.loopMode = .loop
         topRightFeaturedBlock.animationSpeed = 1.5
         topRightFeaturedBlock.play()
         
         bottomLeftFeaturedBlock.loopMode = .loop
         bottomLeftFeaturedBlock.animationSpeed = 2
         bottomLeftFeaturedBlock.play()
         
         bottomCategoriesBlock.delegate = self
         
    
    }
     
     func categoriesBlockButtonPressed() {
          print("Galaxy categories pressed")
     }
}

