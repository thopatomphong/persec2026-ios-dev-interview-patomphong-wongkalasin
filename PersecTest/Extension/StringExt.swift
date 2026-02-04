//
//  StringExt.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation

extension String {
    func toArray() -> [String] {
        return self.replacingOccurrences(of: "\"", with: "") // ลบ"
            .replacingOccurrences(of: "\'", with: "") // ลบ'
            .replacingOccurrences(of: "[", with: "") // ลบ[
            .replacingOccurrences(of: "]", with: "") // ลบ]
            .components(separatedBy: ",") // ตัดคำด้วยคอมม่า
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) } // ลบช่องว่างหน้าหลัง
            .filter { !$0.isEmpty } // ใช้ filter แทน compactMap จะอ่านง่ายกว่าสำหรับการกรอง string ว่าง
    }
    
    func toIntArray() -> [Int] {
        return self
            .trimmingCharacters(in: ["[", "]"]) // ตัด [ ] หัวท้าย
            .components(separatedBy: ",")       // แยกด้วย ,
            .compactMap { Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) } // แปลงเป็น Int ตัดช่องว่าง
    }
}
