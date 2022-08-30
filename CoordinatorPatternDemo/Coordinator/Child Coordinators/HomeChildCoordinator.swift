//
//  HomeChildCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 25/08/2022.
//

import Foundation
import UIKit

class HomeChildCoordinator: ChildCoordinator {
   
    var parentCoordinator: ParentCoordinator?
    var navigationController: UINavigationController
    var userName = ""
    
    init (with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    func configChildVC() {
        let homeVC = HomeVC.instansiateFromStoryBoard()
        navigationController.pushViewController(homeVC, animated: true)
    }
    
    func passPerameters(value: Decodable) {
        guard let parameters = value as? HomeChildParameters else { return }
        userName = parameters.userName
    }
}
