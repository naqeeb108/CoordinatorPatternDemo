//
//  LoginChildCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 25/08/2022.
//

import Foundation
import UIKit

class LoginChildCoordinator: ChildCoordinator {
   
    weak var parentCoordinator: ParentCoordinator?
    var navigationController: UINavigationController
    
    init (with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    func configChildVC() {
        let loginVC = LoginVC.instansiateFromStoryBoard()
        loginVC.loginChildCoordinator = self
        self.navigationController.pushViewController(loginVC, animated: true)
    }
}

extension LoginChildCoordinator {
    
    func navigateToHomeVC(userName: String) {
        let homeChildCoordinator = ChildCoordinatorFactory.create(with: parentCoordinator!.navigationController, type: .home)
        homeChildCoordinator.passPerameters(value: HomeChildParameters(userName: "testing"))
       
        parentCoordinator?.childCoordinators.append(homeChildCoordinator)
        parentCoordinator?.removeChildCoordinator(child: self)
        homeChildCoordinator.configChildVC()
    }
    
    func navigateToResetPassword() {
        let resetPasswordVC = ResetPasswordVC.instansiateFromStoryBoard()
        self.navigationController.pushViewController(resetPasswordVC, animated: true)
    }
    
    func navigateToSignupVC() {
        let signupVC = SignupVC.instansiateFromStoryBoard()
        self.navigationController.pushViewController(signupVC, animated: true)
    }
    
}
