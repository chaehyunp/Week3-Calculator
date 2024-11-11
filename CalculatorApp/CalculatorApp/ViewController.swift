//
//  ViewController.swift
//  CalculatorApp
//
//  Created by 장상경 on 11/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    let answer: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        setAnswer()
    }

    
    ///  숫자 및 수식 입력, answer의 기본 세팅
    func setAnswer() {
        answer.text = "12345"
        answer.textColor = UIColor.white
        answer.textAlignment = .right
        answer.font = UIFont.systemFont(ofSize: 60, weight: .bold)
        answer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(answer)
        
        NSLayoutConstraint.activate([
            answer.heightAnchor.constraint(equalToConstant: 100),
            answer.widthAnchor.constraint(equalToConstant: view.bounds.width),
//            answer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            answer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            answer.topAnchor.constraint(equalTo: view.topAnchor, constant: 200)
        ])
    }

}

