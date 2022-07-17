//
//  MainView.swift
//  ViewCodeApp
//
//  Created by Gilberto Silva on 19/06/22.
//

import UIKit

class MainView: UIView {
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Fetch", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let headerView: HeaderView = {
        let view = HeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var gridBoxLeftView: GridBoxView = {
        let view = GridBoxView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var gridBoxRightView: GridBoxView = {
        let view = GridBoxView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var gridBoxStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 10
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

extension MainView: ViewCodeProtocol {
    
    func buildViewHierarchy() {
        //Adicionar view
        addSubview(button)
        
        gridBoxStackView.addArrangedSubview(gridBoxLeftView)
        gridBoxStackView.addArrangedSubview(gridBoxRightView)
        addSubview(gridBoxStackView)
        addSubview(headerView)
    }
    
    func setupConstraints() {
        //Configurar constraints
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 44),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            self.gridBoxStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.gridBoxStackView.heightAnchor.constraint(equalToConstant: 250),
            self.gridBoxStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.gridBoxStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            self.gridBoxLeftView.heightAnchor.constraint(equalTo: self.gridBoxStackView.heightAnchor),
            self.gridBoxRightView.heightAnchor.constraint(equalTo: self.gridBoxStackView.heightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            self.headerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.headerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.headerView.bottomAnchor.constraint(equalTo: self.gridBoxStackView.topAnchor, constant: -50),
            self.headerView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = .darkGray
    }
}
