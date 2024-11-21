//
//  ViewController.swift
//  Calculator
//
//  Created by 권승용 on 11/18/24.
//

import UIKit

final class ViewController: UIViewController {
    private let numericDisplay: UILabel = {
        let label = UILabel()
        label.text = "12345"
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 60, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private let keypadSeven: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        button.layer.cornerRadius = 40
        return button
    }()
    
    private let keypadEight: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        button.layer.cornerRadius = 40
        return button
    }()
    
    private let keypadNine: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        button.layer.cornerRadius = 40
        return button
    }()
    
    private let keypadPlus: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        button.layer.cornerRadius = 40
        return button
    }()
    
    private lazy var keypadRow: UIStackView = {
        makeHorizontalStackView([
            keypadSeven,
            keypadEight,
            keypadNine,
            keypadPlus
        ])
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        let subViews = [
            numericDisplay,
            keypadRow
        ]
        
        subViews.forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            numericDisplay.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            numericDisplay.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            numericDisplay.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            numericDisplay.heightAnchor.constraint(equalToConstant: 100),
            
            keypadRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            keypadRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            keypadRow.topAnchor.constraint(equalTo: numericDisplay.bottomAnchor, constant: 50),
            keypadRow.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
}

private extension ViewController {
    func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
}

#Preview {
    ViewController()
}

