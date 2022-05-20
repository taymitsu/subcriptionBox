//
//  DogInfoVC.swift
//  2420Final
//
//  Created by Tay Mitsumori on 5/20/22.
//

import Foundation
import UIKit


class DogInfoVC: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    
    var model: Dog? {
        didSet {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = model?.title
    }
}
