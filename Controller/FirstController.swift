//
//  ViewController.swift
//  FirstOpeningScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/10/20.
//

import UIKit

class FirstController: UIViewController {
    
    private var firstView: FirstView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstView = FirstView(frame: self.view.frame)
        self.view = self.firstView
        
        self.navigationController?.isNavigationBarHidden = true
        
        self.firstView.startButton.addTarget(self, action: #selector(mainButtonTapped), for: .touchUpInside)
        
    }
    
    @objc func mainButtonTapped(_ Sender: UIButton){
        self.navigationController?.pushViewController(NameController(), animated: true)
    }


}

