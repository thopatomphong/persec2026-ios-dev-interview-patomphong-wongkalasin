//
//  StringArraySortViewModel.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation
import Combine

class StringArraySortViewModel: ObservableObject {
    @Published var inputText: String = ""
    @Published var result: [String]? = nil
    
    private let useCase: StringArraySortUseCaseProtocol
    
    init(useCase: StringArraySortUseCaseProtocol = StringArraySortUseCase()) {
        self.useCase = useCase
    }
    
    func sortStringArray() {
        result = useCase.naturalSort(inputText)
    }
    
    func reset() {
        inputText = ""
        result = nil
    }
}
