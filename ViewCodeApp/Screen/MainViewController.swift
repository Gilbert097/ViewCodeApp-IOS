//
//  ViewController.swift
//  ViewCodeApp
//
//  Created by Gilberto Silva on 19/06/22.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    
    override func loadView() {
        self.view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

