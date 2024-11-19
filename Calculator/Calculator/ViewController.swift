//
//  ViewController.swift
//  Calculator
//
//  Created by 권승용 on 11/18/24.
//

import UIKit

extension UIColor {
    static let numberBackground = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
    static let operatorBackground = UIColor.orange
}

final class ViewController: UIViewController {
    private let numericDisplay: UILabel = {
        let label = UILabel()
        label.text = "12345"
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 60, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var keypad: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [
                makeKeypadRow(
                    ["7", "8", "9", "+"],
                    [.numberBackground, .numberBackground, .numberBackground, .orange]
                ),
                makeKeypadRow(
                    ["4", "5", "6", "-"],
                    [.numberBackground, .numberBackground, .numberBackground, .orange]
                ),
                makeKeypadRow(
                    ["1", "2", "3", "*"],
                    [.numberBackground, .numberBackground, .numberBackground, .orange]
                ),
                makeKeypadRow(
                    ["AC", "0", "=", "/"],
                    [.orange, .numberBackground, .orange, .orange]
                )
            ]
        )
        stackView.axis = .vertical
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        let subViews = [
            numericDisplay,
            keypad
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
            
            keypad.topAnchor.constraint(equalTo: numericDisplay.bottomAnchor, constant: 60),
            keypad.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            keypad.widthAnchor.constraint(equalToConstant: 350),
            keypad.heightAnchor.constraint(equalToConstant: 350)
        ])
    }
}

private extension ViewController {
    func makeButton(_ title: String, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.backgroundColor = backgroundColor
        button.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        return button
    }
    
    func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
    
    func makeKeypadRow(_ titles: [String], _ backgroundColors: [UIColor]) -> UIStackView {
        let buttonViews = zip(titles, backgroundColors).map {
            makeButton($0, backgroundColor: $1)
        }
        let stackView = makeHorizontalStackView(buttonViews)
        return stackView
    }
}

#Preview {
    ViewController()
}

