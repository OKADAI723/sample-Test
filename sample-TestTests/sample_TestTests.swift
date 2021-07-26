//
//  sample_TestTests.swift
//  sample-TestTests
//
//  Created by Yudai Fujioka on 2021/07/26.
//

import XCTest

//テスト対象のモジュールのインポートを行う
//@testable属性を利用し、アクセスレベルがinteernalの要素がpublicと同等の扱いになり、テストからアクセスできるようになる
@testable import sample_Test

class sample_TestTests: XCTestCase {
    
    func testAdd(num1: Int, num2: Int) {
        let result = Calculator().add(num1: 10, num2: 20)
        
        //引数に式と期待する結果を渡して検証する
        XCTAssertEqual(result, 30)
    }
    
    func testSub(num1: Int, num2: Int) {
        let result = Calculator().sub(num1: 30, num2: 10)
        
        XCTAssertEqual(result, 20)
    }
    
    //単一の式を評価するアサーション
    func testExample1() {
        let value = 5
        XCTAssert(value == 5)
        XCTAssertTrue(value > 0)
        XCTAssertFalse(value < 0)
        
        let nilValue = nil as Int?
        XCTAssertNil(nilValue)
        
        let optionalValue = Optional(1)
        XCTAssertNotNil(optionalValue)
    }
    
    //2つの式を評価するアサーション
    func testExample2() {
        XCTAssertEqual("abc", "abc")
        XCTAssertEqual(0.002, 0.003, accuracy: 0.1)
        XCTAssertNotEqual("abc", "def")
        XCTAssertLessThan(4, 7)
        XCTAssertLessThanOrEqual(7, 7)
        XCTAssertGreaterThan(6, 4)
        XCTAssertGreaterThanOrEqual(4, 4)
    }
    
    //エラーの有無を評価するアサーション
    func testExample3() {
        XCTAssertThrowsError(
            try Throwable().throwableFunction(throwsError: true) )
        XCTAssertNoThrow(
            try Throwable().throwableFunction(throwsError: false))
    }
    
    //無条件に失敗するアサーション
    //テストが特定のパスを通らないこと保証したい場合
    func testExample4() {
        let optionalValue = Optional(3)
        
        guard let value = optionalValue else {
            XCTFail()
            return
        }
    }
    
    
}
