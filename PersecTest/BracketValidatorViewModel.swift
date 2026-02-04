//
//  BracketValidatorViewModel.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation
import Combine

class BracketValidatorViewModel: ObservableObject {
    @Published var inputText: String = ""
    @Published var result: Bool? = nil
    
    private let useCase: BracketValidatorUseCaseProtocol
    
    init(useCase: BracketValidatorUseCaseProtocol = BracketValidatorUseCase()) {
        self.useCase = useCase
    }
    
    func validateBrackets() {
        result = useCase.checkBrackets(inputText)
    }
    
    func reset() {
        inputText = ""
        result = nil
    }
}
