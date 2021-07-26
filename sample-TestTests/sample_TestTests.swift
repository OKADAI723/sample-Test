//
//  sample_TestTests.swift
//  sample-TestTests
//
//  Created by Yudai Fujioka on 2021/07/26.
//

import XCTest
@testable import sample_Test

class sample_TestTests: XCTestCase {

    func testAdd(num1: Int, num2: Int) throws {
        let result = Calculator().add(num1: 10, num2: 20)
        
        //計算結果と期待する結果を渡して検証する
        XCTAssertEqual(result, 30)
    }
    
    func testSub(num1: Int, num2: Int) throws {
        let result = Calculator().sub(num1: 30, num2: 10)
        
        XCTAssertEqual(result, 20)
    }

}
