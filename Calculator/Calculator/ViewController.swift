//
//  ViewController.swift
//  Calculator
//
//  Created by 권승용 on 11/18/24.
//

import UIKit

class ViewController: UIViewController {
    private let numericDisplay: UILabel = {
        let label = UILabel()
        label.text = "12345"
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 60, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .black
        
        let subViews = [
            numericDisplay
        ]
        
        subViews.forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            numericDisplay.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            numericDisplay.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            numericDisplay.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            numericDisplay.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

#Preview {
    ViewController()
}

