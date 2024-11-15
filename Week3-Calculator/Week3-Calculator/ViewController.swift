//
//  ViewController.swift
//  Week3-Calculator
//
//  Created by CHYUN on 11/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let valueLabel = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        configureLabel()
    }
    
    private func configureLabel() {
        
        valueLabel.text = "12345"
        valueLabel.textColor = .white
        valueLabel.textAlignment = .right
        valueLabel.font = .systemFont(ofSize: 60)
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
//        valueLabel.backgroundColor = .white
        view.addSubview(valueLabel)
        
        NSLayoutConstraint.activate([
            valueLabel.heightAnchor.constraint(equalToConstant: 100),
            valueLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            valueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            valueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
        
    }


}

