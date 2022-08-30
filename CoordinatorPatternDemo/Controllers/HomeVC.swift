//
//  ViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 25/08/2022.
//

import UIKit

class HomeVC: UIViewController, CoordinatorBoard {

    weak var homeChildCoordinator: HomeChildCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

