//
//  viewControllerTests.swift
//  UTDemo
//
//  Created by Vijay Subrahmanian on 25/05/15.
//  Copyright (c) 2015 Vijay Subrahmanian. All rights reserved.
//

import UIKit
import XCTest
import UTDemo

class viewControllerTests: XCTestCase {
    
    let vc = ViewController()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

    func testAreStringsAnagrams() {
        // Testing positive case
        let testResult1 = vc.areStringsAnagrams("live", string2: "evil")
        XCTAssertEqual(testResult1, true, "Test 1 Failed")
        // Testing negative case
        let testResult2 = vc.areStringsAnagrams("live", string2: "line")
        XCTAssertEqual(testResult2, false, "Test 2 Failed")
        
    }
}
