//
//  AutoCompleteUseCase.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation

protocol AutoCompleteUseCaseProtocol {
    func autocomplete(search: String, items: [String], maxResult: Int) -> [String]
}

struct AutoCompleteUseCase: AutoCompleteUseCaseProtocol {
    // ข้อ3
    func autocomplete(search: String, items: [String], maxResult: Int) -> [String] {
        let query = search.lowercased()
        
        // Filter กรองเอาเฉพาะคำที่มี search string
        let filteredItems = items.filter { $0.lowercased().contains(query) }
        
        // เรียงลำดับตามเงื่อนไข
        let sortedItems = filteredItems.sorted { (item1, item2) -> Bool in
            let s1 = item1.lowercased()
            let s2 = item2.lowercased()
            
            let s1StartsWith = s1.hasPrefix(query)
            let s2StartsWith = s2.hasPrefix(query)
            
            // เรียงตามserch keyword
            if s1StartsWith != s2StartsWith {
                return s1StartsWith // true ถ้า s1 ขึ้นต้น (s1 มาก่อน), false ถ้า s2 ขึ้นต้น (s2 มาก่อน)
            }
            
            // เรียงตามตัวอักษร
            return s1.localizedStandardCompare(s2) == .orderedAscending
        }
        
        // return จำนวนitem ตามmax result
        return Array(sortedItems.prefix(maxResult))
    }
}
