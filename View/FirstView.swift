//
//  FirstOpeningView.swift
//  FirstOpeningScreen
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/10/20.
//

import UIKit
import SnapKit

class FirstView: UIView {
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Main", for: .normal)
        button.backgroundColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    let firstTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "You Metter"
        label.font = UIFont(name: "Helvetica", size: 30)
        label.textColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        return label
    }()
    
    let secondTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "You Story metter"
        label.font = UIFont(name: "Helvetica", size: 30)
        label.textColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        return label
    }()
    
    let thirdTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "You are Not Alone"
        label.font = UIFont(name: "Helvetica", size: 40)
        label.textColor = UIColor(red: 0.10, green: 0.38, blue: 0.49, alpha: 1.00)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.94, green: 0.89, blue: 0.87, alpha: 1.00)
        
        self.addSubview(firstTitleLabel)
        self.addSubview(secondTitleLabel)
        self.addSubview(thirdTitleLabel)
        self.addSubview(startButton)
        
        firstTitleLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(startButton.snp.top).offset(-180)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            
        }
        
        secondTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(firstTitleLabel.snp.bottom).offset(5)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        thirdTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(secondTitleLabel.snp.bottom).offset(5)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        startButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-50)
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(44)
            make.width.equalTo(340)
        }
    }
    
}
