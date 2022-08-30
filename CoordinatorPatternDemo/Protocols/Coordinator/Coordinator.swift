//
//  Coordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 25/08/2022.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
}

protocol ParentCoordinator: Coordinator {
    var childCoordinators: [ChildCoordinator] { get set }
    func removeChildCoordinator(child: ChildCoordinator)
    func configRootVC()
}

protocol ChildCoordinator: Coordinator {
    var parentCoordinator: ParentCoordinator? { get set }
    func configChildVC()
    func passPerameters(value: Decodable)
}

extension ChildCoordinator {
    func passPerameters(value: Decodable) {}
}
