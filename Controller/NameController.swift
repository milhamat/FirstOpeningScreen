//
//  NameViewController.swift
//  FirstOpeningScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/10/20.
//

import UIKit

class NameController: UIViewController {
    
    private var nameView: NameView!
//    private var randomGen: RandomGenerator!
    
    let firstArray = ["Beruang","Gorila","Badak","Kijang","OrangUtan","Serigala","Buaya","Sapi","Domba","Kumbang"]
    let secondArray = ["Manis","Cute","Lucu","Imut","Manis","Gendut","Gembul","Cuby","Madu","Coffe","Chocolate","Melati","Susu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameView = NameView(frame: self.view.frame)
        self.view = self.nameView
        
        self.nameView.randomNameButton.addTarget(self, action: #selector(randomButtonTapped), for: .touchUpInside)
        
        
    }
    
    @objc func randomButtonTapped(_ Sender: UIButton){
        let first = firstArray[Int.random(in: 1...9)]
        let second = secondArray[Int.random(in: 1...12)]
        let third = String(Int.random(in: 1...100))
        
        let randomName = first  + second  + third
        nameView.inputNameTextField.text = randomName
        
    }

}
