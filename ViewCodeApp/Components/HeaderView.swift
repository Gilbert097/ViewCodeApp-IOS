//
//  HeaderView.swift
//  ViewCodeApp
//
//  Created by Gilberto Silva on 03/07/22.
//

import Foundation
import UIKit

class HeaderView: UIView {
    
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let mainStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fill
        view.spacing = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let firstLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let secondLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .lightGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let columnStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let firstColumnLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .lightPink
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let secondColumnLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .lightBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HeaderView: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        addSubview(imageView)
        
        mainStackView.addArrangedSubview(firstLabel)
        mainStackView.addArrangedSubview(secondLabel)
        
        columnStackView.addArrangedSubview(firstColumnLabel)
        columnStackView.addArrangedSubview(secondColumnLabel)
        mainStackView.addArrangedSubview(columnStackView)
        addSubview(mainStackView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.imageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.imageView.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.9)
        ])
        
        NSLayoutConstraint.activate([
            self.mainStackView.topAnchor.constraint(equalTo: self.topAnchor),
            self.mainStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.mainStackView.leadingAnchor.constraint(equalTo: self.imageView.trailingAnchor, constant: 10),
            self.mainStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            self.firstLabel.heightAnchor.constraint(equalToConstant: 25),
            self.secondLabel.heightAnchor.constraint(equalToConstant: 25),
            self.firstColumnLabel.heightAnchor.constraint(equalToConstant: 35),
            self.secondColumnLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    func setupAdditionalConfiguration() {
        
    }
}

private extension UIColor {
    
    class var lightGreen: UIColor {
        .init(red: 77/255.0, green: 250/255.0, blue: 149/255.0, alpha: 1.0)
    }
    
    class var lightPink: UIColor {
        .init(red: 247/255.0, green: 121/255.0, blue: 238/255.0, alpha: 1.0)
    }
    
    class var lightBlue: UIColor {
        .init(red: 102/255.0, green: 237/255.0, blue: 203/255.0, alpha: 1.0)
    }
}
