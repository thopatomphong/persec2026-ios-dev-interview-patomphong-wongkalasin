//
//  TribonacciUseCaseTests.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//


import XCTest
@testable import PersecTest

final class TribonacciUseCaseTests: XCTestCase {
    var sut: TribonacciUseCase!
    
    override func setUp() {
        super.setUp()
        sut = TribonacciUseCase()
    }
    
    func testTribonacciWithThreeNumbersAndFour() {
        XCTAssertEqual([10, 10, 10, 30], sut.tribonacci([10, 10, 10], 4))
    }
    
    func testTribonacciWithThreeNumbersAndFive() {
        XCTAssertEqual([1, 3, 5, 9, 17], sut.tribonacci([1, 3, 5], 5))
    }
    
    func testTribonacciWithThreeNumbersAndThree() {
        XCTAssertEqual([2, 2, 2], sut.tribonacci([2, 2, 2], 3))
    }
    
    func testTribonacciWithThreeNumbersAndEight() {
        XCTAssertEqual([1, 1, 1, 3, 5, 9, 17, 31], sut.tribonacci([1, 1, 1], 8))
    }
    
    func testTribonacciWithThreeNumbersAndTen() {
        XCTAssertEqual([0, 0, 1, 1, 2, 4, 7, 13, 24, 44], sut.tribonacci([0, 0, 1], 10))
    }
    
    func testTribonacciWithThreeNumbersAndSix() {
        XCTAssertEqual([10, 20, 30, 60, 110, 200], sut.tribonacci([10, 20, 30], 6))
    }
    
    func testTribonacciWithThreeNumbersAndSeven() {
        XCTAssertEqual([1, 2, 3, 6, 11, 20, 37], sut.tribonacci([1, 2, 3], 7))
    }
    
    func testStringArraySortWithThreeItems8() {
        XCTAssertEqual([100, 200], sut.tribonacci([100, 200, 300], 2))
    }
    
}
