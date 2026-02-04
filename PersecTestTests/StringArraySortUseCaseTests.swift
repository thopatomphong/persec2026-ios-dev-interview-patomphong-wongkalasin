//
//  StringArraySortUseCaseTests.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import XCTest
@testable import PersecTest

final class StringArraySortUseCaseTests: XCTestCase {
    var sut: StringArraySortUseCase!
    
    override func setUp() {
        super.setUp()
        sut = StringArraySortUseCase()
    }
    
    func testStringArraySortWithThreeItems() {
        XCTAssertEqual(["SG20", "TH2", "TH19"], sut.naturalSort("TH19, SG20 , TH2"))
    }
    
    func testStringArraySortWithFourItems() {
        XCTAssertEqual(["TH1", "TH3Netflix", "TH7", "TH10"], sut.naturalSort("TH10, TH3Netflix, TH1, TH7"))
    }
    
    func testStringArraySortWithFiveItems() {
        XCTAssertEqual(["G6", "SG5", "TH1", "TH10", "TH11"], sut.naturalSort("TH11, SG5, TH1, TH10, G6"))
    }
    
    func testStringArraySortWithOneItem() {
        XCTAssertEqual(["SG20"], sut.naturalSort("SG20"))
    }
    
    func testStringArraySortWithEmptyString() {
        XCTAssertEqual([], sut.naturalSort(""))
    }
    
    func testStringArraySortithEmptyStringAndComma() {
        XCTAssertEqual([], sut.naturalSort(" , "))
    }
    
    func testStringArraySortWithDoubleSpace() {
        XCTAssertEqual(["SG22", "TH18", "TH21"], sut.naturalSort("TH18  , SG22   ,TH21"))
    }
    
    func testStringArraySortWith1() {
        XCTAssertEqual(["SG22", "TH18", "TH21"], sut.naturalSort("[TH18  , SG22   ,TH21]"))
    }
    
    func testStringArraySortWith2() {
        XCTAssertEqual(["SG22", "TH18", "TH21"], sut.naturalSort("[\"TH18\"  , \"SG22\"   ,\"TH21\"]"))
    }
}
