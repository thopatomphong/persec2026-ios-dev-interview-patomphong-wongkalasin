//
//  NumbersSortViewUseCaseTests.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import XCTest
@testable import PersecTest

final class NumbersSortUseCaseTests: XCTestCase {
    var sut: NumbersSortUseCase!
    
    override func setUp() {
        super.setUp()
        sut = NumbersSortUseCase()
    }
    
    func testSortNumbersWith1234ShouldReturn4321() {
        XCTAssertEqual(4321, sut.sortNumbersDescending(1234))
    }
    
    func testSortNumbersWith3008ShouldReturn8300() {
        XCTAssertEqual(8300, sut.sortNumbersDescending(3008))
    }
    
    func testSortNumbersWith1989ShouldReturn9981() {
        XCTAssertEqual(9981, sut.sortNumbersDescending(1989))
    }
    
    func testSortNumbersWith2679ShouldReturn9762() {
        XCTAssertEqual(9762, sut.sortNumbersDescending(2679))
    }
    
    func testSortNumbersWith9163ShouldReturn9631() {
        XCTAssertEqual(9631, sut.sortNumbersDescending(9163))
    }
}
