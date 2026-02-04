//
//  BracketValidatorUseCaseTests.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import XCTest
@testable import PersecTest

final class BracketValidatorUseCaseTests: XCTestCase {
    var sut: BracketValidatorUseCase!
    
    override func setUp() {
        super.setUp()
        sut = BracketValidatorUseCase()
    }

    // MARK: - Valid cases
    func testEmptyStringIsValid() {
        XCTAssertTrue(sut.checkBrackets(""))
    }

    func testSinglePairsAreValid() {
        XCTAssertTrue(sut.checkBrackets("()"))
        XCTAssertTrue(sut.checkBrackets("[]"))
        XCTAssertTrue(sut.checkBrackets("{}"))
    }

    func testNestedAndMixedValid() {
        XCTAssertTrue(sut.checkBrackets("([]){}"))
        XCTAssertTrue(sut.checkBrackets("{[()()]}"))
        XCTAssertTrue(sut.checkBrackets("{([][]){()}}"))
    }

    func testValidWithNonBracketCharacters() {
        XCTAssertTrue(sut.checkBrackets("a(b[c]{d}e)f"))
    }

    // MARK: - Invalid cases
    func testPrematureClosing() {
        XCTAssertFalse(sut.checkBrackets(")("))
        XCTAssertFalse(sut.checkBrackets("]"))
        XCTAssertFalse(sut.checkBrackets("}"))
    }

    func testMismatchedTypes() {
        XCTAssertFalse(sut.checkBrackets("(]"))
        XCTAssertFalse(sut.checkBrackets("[}"))
        XCTAssertFalse(sut.checkBrackets("{)"))
    }

    func testLeftoverOpenings() {
        XCTAssertFalse(sut.checkBrackets("("))
        XCTAssertFalse(sut.checkBrackets("[("))
        XCTAssertFalse(sut.checkBrackets("{["))
    }
    
    func testRightoverOpenings() {
        XCTAssertFalse(sut.checkBrackets(")"))
        XCTAssertFalse(sut.checkBrackets(")]"))
        XCTAssertFalse(sut.checkBrackets("]}"))
        XCTAssertFalse(sut.checkBrackets("([]]"))
        XCTAssertFalse(sut.checkBrackets("(]}])"))
        XCTAssertFalse(sut.checkBrackets("([[{}]]]"))
    }

    func testInterleavedWrongOrder() {
        XCTAssertFalse(sut.checkBrackets("([)]"))
        XCTAssertFalse(sut.checkBrackets("{[}]"))
    }
}
