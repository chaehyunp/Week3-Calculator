//
//  ViewController.swift
//  Week3-Calculator
//
//  Created by CHYUN on 11/15/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let valueLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        configureLabel()
        configureHStackView([configureButton(what: "7"),
                             configureButton(what: "8"),
                             configureButton(what: "9"),
                             configureButton(what: "+")])
    }
    
    private func configureLabel() {
        
        valueLabel.text = "12345"
        valueLabel.textColor = .white
        valueLabel.textAlignment = .right
        valueLabel.font = .systemFont(ofSize: 60)
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(valueLabel)
        
        valueLabel.snp.makeConstraints{
            $0.height.equalTo(100)
            $0.top.equalToSuperview().offset(200)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
        }
        
    }
    
    private func configureButton(what element: String) -> UIButton {
        
        let numberButton = UIButton()
        
        numberButton.setTitle(element, for: .normal)
        numberButton.setTitleColor(.white, for: .normal)
        numberButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
        numberButton.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        numberButton.frame.size.width = 80
        numberButton.frame.size.height = 80
        numberButton.layer.cornerRadius = 40
        
        return numberButton

    }
    
    private func configureHStackView(_ views: [UIButton]) {
        
        let hStackView = UIStackView()
        hStackView.axis = .horizontal
        hStackView.backgroundColor = .black
        hStackView.spacing = 10
        hStackView.distribution = .fillEqually
        for index in 0...views.count - 1 {
            hStackView.addArrangedSubview(views[index])
        }
        hStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hStackView)
        
        hStackView.snp.makeConstraints{
            $0.height.equalTo(80)
            $0.top.equalTo(valueLabel.snp.bottom).offset(100)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
        }
        

        
    }

}

