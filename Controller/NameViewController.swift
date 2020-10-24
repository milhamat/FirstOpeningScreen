//
//  NameViewController.swift
//  FirstOpeningScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/10/20.
//

import UIKit

class NameController: UIViewController {
    
    private var nameView: NameView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameView = NameView(frame: self.view.frame)
        self.view = self.nameView

        
    }
    

}
