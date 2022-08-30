//
//  MainCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 25/08/2022.
//

import Foundation
import UIKit

class MainCoordinator: ParentCoordinator {
    
    var childCoordinators = [ChildCoordinator]()
    var navigationController: UINavigationController
    
    init(with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    func configRootVC() {
        let loginChildCoordinator = ChildCoordinatorFactory.create(with: self.navigationController, type: .login)
        childCoordinators.append(loginChildCoordinator)
        loginChildCoordinator.parentCoordinator = self
        loginChildCoordinator.configChildVC()
    }
    
    func removeChildCoordinator(child: ChildCoordinator) {
        for (index,coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
