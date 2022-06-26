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
    
    lazy var gridBoxView: GridBoxView = {
        let view = GridBoxView()
        view.backgroundColor = .yellow
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
        addSubview(gridBoxView)
    }
    
    func setupConstraints() {
        //Configurar constraints
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15)
        ])
        
        NSLayoutConstraint.activate([
            self.gridBoxView.heightAnchor.constraint(equalToConstant: 200),
            self.gridBoxView.widthAnchor.constraint(equalToConstant: 200),
            self.gridBoxView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = .darkGray
    }
}
