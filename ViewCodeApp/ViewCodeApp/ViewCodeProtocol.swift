//
//  ViewCodeProtocol.swift
//  ViewCodeApp
//
//  Created by Gilberto Silva on 20/06/22.
//

import Foundation

protocol ViewCodeProtocol {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension ViewCodeProtocol {
    func setupView(){
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
