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
        
        nameView.inputNameTextField.delegate = self
        
        self.nameView.randomNameButton.addTarget(self, action: #selector(randomButtonTapped), for: .touchUpInside)
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
            self.nameView!.toolTipImageView.alpha = 1.0
        }, completion: nil)
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.nameView!.toolTipImageView.alpha = 0.0
            }, completion: nil)
            
        }
    }
    
    @objc func randomButtonTapped(_ Sender: UIButton){
        let first = firstArray[Int.random(in: 1...9)]
        let second = secondArray[Int.random(in: 1...12)]
        let third = String(Int.random(in: 1...100))
        
        let randomName = first  + second  + third
        nameView.inputNameTextField.text = randomName
        
        let htg = nameView.inputNameTextField.text?.count
        nameView.characterLabel.text = "\(htg!)/20"
        
        if nameView.inputNameTextField.text == ""{
            nameView.characterLabel.text = "0/20"
        }
    }

}

extension NameController: UITextFieldDelegate {
        
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var htg = nameView.inputNameTextField.text?.count
//        let tbh = htg! - 1
        nameView.characterLabel.text = "\(htg!)/20"
        
        let maxLength = 20
        let currentString: NSString = textField.text! as NSString
        let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        
        if currentString == "" {
            htg = 0
        }
        
        return newString.length <= maxLength
    }
    
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameView.inputNameTextField.endEditing(true)
        // when user pressed DONE
        
        if nameView.inputNameTextField.text == ""{
            nameView.characterLabel.text = "0/20"
            // Screen Won't Change
        }
        
        print("Done Move To Next Screen")
        
        return true
    }
}
