//
//  BracketValidatorUseCase.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation

protocol BracketValidatorUseCaseProtocol {
    func checkBrackets(_ text: String) -> Bool
}

struct BracketValidatorUseCase: BracketValidatorUseCaseProtocol {
    // ข้อ1
    func checkBrackets(_ text: String) -> Bool {
        var stack: [Character] = []
        let bracketPairs: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]
        
        for char in text {
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            } else if let matchingOpening = bracketPairs[char] {
                if stack.isEmpty { return false }
                let top = stack.removeLast()
                if top != matchingOpening { return false }
            }
        }
        return stack.isEmpty
    }
}
