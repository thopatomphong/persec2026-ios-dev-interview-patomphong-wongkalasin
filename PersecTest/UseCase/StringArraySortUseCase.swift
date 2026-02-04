//
//  StringArraySortUseCase.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation

protocol StringArraySortUseCaseProtocol {
    func naturalSort(_ stringArray: String) -> [String]
}

struct StringArraySortUseCase: StringArraySortUseCaseProtocol {
    // ข้อ2
    func naturalSort(_ text: String) -> [String] {
        return text.toArray()
            .sorted {
            // เรียงทั้งตัวอักษรและตัวเลข
            return $0.localizedStandardCompare($1) == .orderedAscending
        }
    }
}
