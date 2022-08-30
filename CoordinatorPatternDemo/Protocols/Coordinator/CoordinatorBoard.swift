//
//  CoordinatorBoard.swift
//  CoordinatorPatternDemo
//
//  Created by Mac on 25/08/2022.
//

import Foundation
import UIKit

protocol CoordinatorBoard: UIViewController {
    static func instansiateFromStoryBoard() -> Self
}

extension CoordinatorBoard {
    static func instansiateFromStoryBoard() -> Self {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let id = String(describing: self)
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
}
