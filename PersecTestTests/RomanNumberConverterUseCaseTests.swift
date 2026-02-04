//
//  RomanNumberConverterUseCaseTests.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import XCTest
@testable import PersecTest

final class RomanNumberConverterUseCaseTests: XCTestCase {
    var sut: RomanNumberConverterUseCase!
    
    override func setUp() {
        super.setUp()
        sut = RomanNumberConverterUseCase()
    }
    
    // Test Convert Int To Roman number
    func testConvertIntToRomanWith1ShouldReturnI() {
        XCTAssertEqual("I", sut.convertIntToRoman(1))
    }
    
    func testConvertIntToRomanWith2ShouldReturnII() {
        XCTAssertEqual("II", sut.convertIntToRoman(2))
    }
    
    func testConvertIntToRomanWith3ShouldReturnIII() {
        XCTAssertEqual("III", sut.convertIntToRoman(3))
    }
    
    func testConvertIntToRomanWith5ShouldReturnV() {
        XCTAssertEqual("V", sut.convertIntToRoman(5))
    }
    
    func testConvertIntToRomanWith4ShouldReturnIV() {
        XCTAssertEqual("IV", sut.convertIntToRoman(4))
    }
    
    func testConvertIntToRomanWith6ShouldReturnVI() {
        XCTAssertEqual("VI", sut.convertIntToRoman(6))
    }
    
    func testConvertIntToRomanWith10ShouldReturnX() {
        XCTAssertEqual("X", sut.convertIntToRoman(10))
    }
    
    func testConvertIntToRomanWith1989ShouldReturnMCMLXXXIX() {
        XCTAssertEqual("MCMLXXXIX", sut.convertIntToRoman(1989))
    }
    
    func testConvertIntToRomanWith2000ShouldReturnMM() {
        XCTAssertEqual("MM", sut.convertIntToRoman(2000))
    }
    
    func testConvertIntToRomanWith68ShouldReturnLXVIII() {
        XCTAssertEqual("LXVIII", sut.convertIntToRoman(68))
    }
    
    func testConvertIntToRomanWith109ShouldReturnCIX() {
        XCTAssertEqual("CIX", sut.convertIntToRoman(109))
    }
    
    // Test Convert Roman Number To Int
    func testConvertRomanToIntWithIShouldReturn1() {
        XCTAssertEqual(1, sut.convertRomanToInt("I"))
    }
    
    func testConvertRomanToIntWithIIShouldReturn2() {
        XCTAssertEqual(2, sut.convertRomanToInt("II"))
    }
    
    func testConvertRomanToIntWithIIIShouldReturn3() {
        XCTAssertEqual(3, sut.convertRomanToInt("III"))
    }
    
    func testConvertRomanToIntWithVShouldReturn5() {
        XCTAssertEqual(5, sut.convertRomanToInt("V"))
    }
    
    func testConvertRomanToIntWithIVShouldReturn4() {
        XCTAssertEqual(4, sut.convertRomanToInt("IV"))
    }
    
    func testConvertRomanToIntWithVIShouldReturn6() {
        XCTAssertEqual(6, sut.convertRomanToInt("VI"))
    }
    
    func testConvertRomanToIntWithMCMLXXXIXShouldReturn1989() {
        XCTAssertEqual(1989, sut.convertRomanToInt("MCMLXXXIX"))
    }
    
    func testConvertRomanToIntWithMMShouldReturn2000() {
        XCTAssertEqual(2000, sut.convertRomanToInt("MM"))
    }
    
    func testConvertRomanToIntWithLXVIIIShouldReturn68() {
        XCTAssertEqual(68, sut.convertRomanToInt("LXVIII"))
    }
    
    func testConvertRomanToIntWithCIXShouldReturn109() {
        XCTAssertEqual(109, sut.convertRomanToInt("CIX"))
    }
}
