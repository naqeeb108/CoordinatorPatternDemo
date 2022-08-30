//
//  LoginVC.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 25/08/2022.
//

import UIKit

class LoginVC: UIViewController, CoordinatorBoard {

    @IBOutlet weak var loginButton: UIButton!

    var didTapButon: ((LoginScreenActionType)->Void)?
    weak var loginChildCoordinator: LoginChildCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        loginButton.layer.cornerRadius = 8
    }
    
    @IBAction func resetPasswordTapped(_ sender: UIButton) {
        loginChildCoordinator?.navigateToResetPassword()
    }
    
    @IBAction func loginVC(_ sender: UIButton) {
        
        didTapButon?(.home)
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        loginChildCoordinator?.navigateToSignupVC()
    }
}
