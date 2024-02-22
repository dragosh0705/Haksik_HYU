//
//  ViewController.swift
//  Haksik_HYU
//
//  Created by 최영우 on 2024. 2. 21..
//

import UIKit
import Foundation

class ViewController: UIViewController {
    private var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "hello"
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mainLabel)
        
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    
    }
}
