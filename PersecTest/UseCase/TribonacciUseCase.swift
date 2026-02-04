//
//  TribonacciUseCase.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation

protocol TribonacciUseCaseProtocol {
    func tribonacci(_ signature: [Int], _ n: Int) -> [Int]
}

struct TribonacciUseCase: TribonacciUseCaseProtocol {
    // ข้อ6
    func tribonacci(_ numbers: [Int], _ n: Int) -> [Int] {
        // ถ้า n เป็น 0 return empty array
        guard n > 0 else { return [] }
        
        //ถ้า n น้อยกว่าหรือเท่ากับจำนวน number array ที่ให้มา
        // returnเฉพาะส่วนที่ต้องการ (เช่น input [2,2,2] ต้องการ 3 ตัว ก็คืนค่าเดิมกลับไป)
        if n <= numbers.count {
            return Array(numbers.prefix(n))
        }
        
        var result = numbers
        
        // วนลูปเพื่อหาค่าตัวถัดไปจนครบจำนวน n
        // ต้องมีตัวเลขใน result อย่างน้อย 3 ตัวจึงจะคำนวณตัวถัดไปได้
        while result.count < n {
            let count = result.count
            // สูตร Tribonacci: ผลรวมของ 3 ตัวล่าสุด
            let nextValue = result[count-1] + result[count-2] + result[count-3]
            result.append(nextValue)
        }
        
        return result
    }
}
