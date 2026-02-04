//
//  NumbersSortUseCase.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation

protocol NumbersSortUseCaseProtocol {
    func sortNumbersDescending(_ number: Int) -> Int
}

struct NumbersSortUseCase: NumbersSortUseCaseProtocol {
    // ข้อ5
    func sortNumbersDescending(_ number: Int) -> Int {
        // ตรวจสอบค่ามากกว่า0
        guard number > 0 else { return 0 }
        
        // แปลงตัวเลขเป็น String
        let numberString = String(number)
        
        // เรียงลำดับตัวอักษรจากมากไปน้อย
        let sortedCharacters = numberString.sorted(by: >)
        
        // แปลงกลับเป็น Int
        return Int(String(sortedCharacters)) ?? 0
    }
}
