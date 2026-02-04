//
//  TribonacciViewModel.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation
import Combine

class TribonacciViewModel: ObservableObject {
    @Published var inputNumbers: String = ""
    @Published var inputN: String = ""
    @Published var result: [Int]? = nil
    
    private let useCase: TribonacciUseCaseProtocol
    
    init(useCase: TribonacciUseCaseProtocol = TribonacciUseCase()) {
        self.useCase = useCase
    }
    
    func tribonacci() {
        result = useCase.tribonacci(inputNumbers.toIntArray(), Int(inputN) ?? 0)
    }
    
    func reset() {
        inputNumbers = ""
        inputN = ""
        result = nil
    }
}
