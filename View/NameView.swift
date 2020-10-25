//
//  NameView.swift
//  FirstOpeningScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/10/20.
//

import UIKit
import SnapKit

class NameView: UIView {
    
    let randomNameButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        button.layer.cornerRadius = 5
        return button
    }()
    
    let characterLabel: UILabel = {
        let label = UILabel()
        label.text = "0/25"
        label.textColor = .lightGray
        return label
    }()
    
    let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "Hallo, Saya YANA."
        label.font = UIFont(name: "Helvetica", size: 20)
        label.textColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        return label
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "Kamu ingin dipanggil apa?."
        label.font = UIFont(name: "Helvetica", size: 20)
        label.textColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        return label
    }()
    
    let inputNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "User name"
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.clearButtonMode = UITextField.ViewMode.whileEditing;
        textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
        self.addSubview(inputNameTextField)
        self.addSubview(randomNameButton)
        self.addSubview(characterLabel)
        self.addSubview(firstLabel)
        self.addSubview(secondLabel)
        
        inputNameTextField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.safeAreaLayoutGuide).offset(-20)
            make.centerY.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(40)
            make.width.equalTo(300)
        }
        
        randomNameButton.snp.makeConstraints { (make) in
            make.left.equalTo(inputNameTextField.snp.right)
            make.centerY.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        characterLabel.snp.makeConstraints { (make) in
            make.top.equalTo(randomNameButton.snp.bottom).offset(5)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-35)
        }
        
        firstLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(inputNameTextField.snp.top).offset(-50)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        secondLabel.snp.makeConstraints { (make) in
            make.top.equalTo(firstLabel.snp.bottom).offset(5)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
    }
}
