//
//  ViewController.swift
//  CalculatorApp
//
//  Created by 장상경 on 11/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let displayLabel: UILabel = UILabel()
    
    private let buttons = ButtonData()
    
    private let stackView = ButtonStackView(axix: .horizontal, spacing: 10)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        setDisplayLabel()
    }

    ///  숫자 및 수식 입력, answer의 기본 세팅
    private func setDisplayLabel() {
        displayLabel.text = "12345"
        displayLabel.textColor = UIColor.white
        displayLabel.textAlignment = .right
        displayLabel.font = UIFont.systemFont(ofSize: 60, weight: .bold)
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(displayLabel)
                
        NSLayoutConstraint.activate([
            displayLabel.heightAnchor.constraint(equalToConstant: 100),
            displayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            displayLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            displayLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200)
        ])
    }
    
    /// 스택뷰의 기본 세팅을 해주는 메소드
    /// - Parameters:
    ///   - stackView: 세팅을 진행할 스택뷰
    ///   - item: 스택뷰에 넣을 아이템
    ///   - superView: 스택뷰의 오토레이아웃의 기준이 될 뷰
    ///   - constant: 기준 뷰와 떨어질 값
    ///
    ///   ``setButtonRow(_:)``
    private func setHStack(_ stackViews: [UIStackView]) {
        for (index, stackView) in stackViews.enumerated() {
            
        }
    }
}
