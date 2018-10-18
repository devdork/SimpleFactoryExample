//
//  EnvFactory.swift
//  SimpleFactoryExample
//
//  Created by devdork on 2018/10/18.
//  Copyright © 2018 devdork. All rights reserved.
//

import Foundation
import UIKit

protocol Environment {
    var identifier: String { get }
    var tint: UIColor { get }
    var background: UIColor { get }
}

class DevEnvironment: Environment {
    var identifier: String { return "dev" }
    var tint: UIColor { return .white }
    var background: UIColor { return .black }
}

class ProdEnvironment: Environment {
    var identifier: String { return "prod" }
    var tint: UIColor { return .black }
    var background: UIColor { return .white }
}

class EnvironmentFactory {
    
    enum EnvType {
        case dev
        case prod
    }
    
    func create(_ type: EnvType) -> Environment {
        switch type {
        case .dev:
            return DevEnvironment()
        case .prod:
            return ProdEnvironment()
        }
    }
}
