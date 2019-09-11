//
//  CodableObjectType.swift
//  CodableUserDefaults
//
//  Created by Olar's Mac on 8/13/19.
//  Copyright © 2019 Adie Olalekan. All rights reserved.
//

import Foundation

/**
 CodableObjectType defines the way your object is structured. So if you use
 - myName
 - my_name
 - myname
 **/
public enum CodableObjectType {
    case carmelcase
    case snakecase
    case lowercase
}
