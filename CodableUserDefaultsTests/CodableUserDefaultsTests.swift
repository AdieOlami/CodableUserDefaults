//
//  CodableUserDefaultsTests.swift
//  CodableUserDefaultsTests
//
//  Created by Olar's Mac on 8/12/19.
//  Copyright © 2019 Adie Olalekan. All rights reserved.
//

import XCTest
@testable import CodableUserDefaults

class CodableUserDefaultsTests: XCTestCase {
    
    var cUD: CodableUserDefaults!

    override func setUp() {
        cUD = CodableUserDefaults()
    }

    override func tearDown() {
    }

    func testSave() {
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
