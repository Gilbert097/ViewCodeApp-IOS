//
//  MainView.swift
//  ViewCodeApp
//
//  Created by Gilberto Silva on 19/06/22.
//

import UIKit

class MainView: UIView {

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.backgroundColor = .darkGray
        
        let button = UIButton(frame: .zero)
        button.backgroundColor = .red
        button.setTitle("Fetch", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        //Adicionar view
        addSubview(button)
        
        //Configurar constraints
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        
        //Setup adicional
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
