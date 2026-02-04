//
//  AutoCompleteUseCaseTests.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import XCTest
@testable import PersecTest

final class AutoCompleteUseCaseTests: XCTestCase {
    var sut: AutoCompleteUseCase!
    
    override func setUp() {
        super.setUp()
        sut = AutoCompleteUseCase()
    }
    
    func testAutoCompleteWiththShouldReturnThinkandMother() {
        XCTAssertEqual(["Think", "Mother"],
                       sut.autocomplete(search: "th",
                                        items: ["Mother", "Think", "Worthy", "Apple", "Android"],
                                        maxResult: 2)
        )
    }
    
    func testAutoCompleteWithpiShouldReturnPieAndPizza() {
        XCTAssertEqual(["Pie", "Pizza"],
                       sut.autocomplete(search: "pi",
                                        items: ["Coconut", "Apple", "Pizza", "Lemon", "Pie"],
                                        maxResult: 2)
        )
    }
    
    func testAutoCompleteWithapShouldReturnApple() {
        XCTAssertEqual(["Apple"],
                       sut.autocomplete(search: "ap",
                                        items: ["Coconut", "Apple", "Pizza", "Lemon", "Pie"],
                                        maxResult: 1)
        )
    }
    
    func testAutoCompleteWithMaxResult0ShouldReturnEmpty() {
        XCTAssertEqual([],
                       sut.autocomplete(search: "pi",
                                        items: ["Coconut", "Apple", "Pizza", "Lemon", "Pie"],
                                        maxResult: 0)
        )
    }
    
    func testAutoCompleteWithapShouldReturnLeagueLearnLemon() {
        XCTAssertEqual(["League", "Learn", "Lemon"],
                       sut.autocomplete(search: "le",
                                        items: ["Cat", "Learn", "Apple", "Lemon", "Pie", "League"],
                                        maxResult: 3)
        )
    }
}
