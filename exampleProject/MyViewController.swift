//
//  MyViewController.swift
//  exampleProject
//
//  Created by Aarish Khanna on 20/02/23.
//

import UIKit

class MyViewController: UIViewController {
    // 1
    private var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.text = "Hello, UIKit!"
        label.textAlignment = .center
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 2
        view.backgroundColor = .systemPink

        // 3
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
        ])
    }
}
