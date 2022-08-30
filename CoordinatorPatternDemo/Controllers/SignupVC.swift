//
//  SignupVC.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 25/08/2022.
//

import UIKit

class SignupVC: UIViewController, CoordinatorBoard {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationItem.hidesBackButton = true
    }

}
