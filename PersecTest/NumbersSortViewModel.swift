//
//  NumbersSortViewModel.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation
import Combine

class NumbersSortViewModel: ObservableObject {
    @Published var inputText: String = ""
    @Published var result: String? = nil
    
    private let useCase: NumbersSortUseCaseProtocol
    
    init(useCase: NumbersSortUseCaseProtocol = NumbersSortUseCase()) {
        self.useCase = useCase
    }
    
    func sortNumber() {
        result = String(useCase.sortNumbersDescending(Int(inputText) ?? 0))
    }
    
    func reset() {
        inputText = ""
        result = nil
    }
}
