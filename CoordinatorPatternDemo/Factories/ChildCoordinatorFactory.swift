//
//  ChildCoordinatorFactory.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 26/08/2022.
//

import Foundation
import UIKit

class ChildCoordinatorFactory {
    
    static func create(with _navigationController: UINavigationController, type: childCoordinatorType) -> ChildCoordinator {
        switch type {
        case .login:
            return LoginChildCoordinator(with: _navigationController)
        case .home:
            return HomeChildCoordinator(with: _navigationController)
        }
    }
}
