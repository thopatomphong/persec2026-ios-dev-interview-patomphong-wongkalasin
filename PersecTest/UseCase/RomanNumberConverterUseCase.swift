//
//  RomanNumberConverterUseCase.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation

protocol RomanNumberConverterUseCaseProtocol {
    func convertIntToRoman(_ number: Int) -> String
    func convertRomanToInt(_ roman: String) -> Int
}

struct RomanNumberConverterUseCase: RomanNumberConverterUseCaseProtocol {
    // ข้อ4
    
    // รับIntเข้ามาแปลงและreturnออกมาเป็นString Roman Number
    func convertIntToRoman(_ number: Int) -> String {
        // ตรวจสอบเลขโรมันมีค่ามากกว่า 0
        guard number > 0 else { return "ไม่สามารถแปลงเลข 0 หรือติดลบได้" }
        
        var num = number
        var result = ""
        
        // mappingค่าตัวเลขและสัญลักษณ์
        let mappings: [(value: Int, symbol: String)] = [
            (1000, "M"),
            (900, "CM"),
            (500, "D"),
            (400, "CD"),
            (100, "C"),
            (90, "XC"),
            (50, "L"),
            (40, "XL"),
            (10, "X"),
            (9, "IX"),
            (5, "V"),
            (4, "IV"),
            (1, "I")
        ]
        
        // วนลูปตรวจสอบค่า
        for map in mappings {
            while num >= map.value {
                result += map.symbol
                num -= map.value
            }
        }
        
        return result
    }
    
    // รับString Roman Number เข้ามาแปลงและreturnออกมาเป็นInt
    func convertRomanToInt(_ roman: String) -> Int {
        // dictionaryเก็บค่าของสัญลักษณ์
        let values: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        let chars = Array(roman.uppercased()) // แปลงเป็นArrayและทำให้เป็นตัวพิมพ์ใหญ่
        var total = 0
        var i = 0
        
        while i < chars.count {
            // ดึงค่าปัจจุบัน
            guard let value = values[chars[i]] else { return 0 } // กรณีใส่ตัวอักษรผิด
            
            // ตรวจสอบตัวถัดไป
            if i + 1 < chars.count, let nextValue = values[chars[i + 1]], nextValue > value {
                total += (nextValue - value)
                i += 2 // ข้ามไป 2 ตัวอักษรเพราะถูกใช้คู่กันแล้ว
            } else {
                total += value
                i += 1
            }
        }
        
        return total
    }
}
