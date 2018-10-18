//
//  ColorFactory.swift
//  SimpleFactoryExample
//
//  Created by devdork on 2018/10/18.
//  Copyright © 2018 devdork. All rights reserved.
//

import Foundation
import UIKit

class ColorFactory {
    
    enum Style {
        case text
        case background
    }
    
    func create(_ style:Style) -> UIColor {
        switch style {
        case .text:
            return .black
        case .background:
            return .white
        }
    }    
}
