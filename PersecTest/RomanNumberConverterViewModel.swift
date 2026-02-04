//
//  RomanNumberConverterViewModel.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//
import Foundation
import Combine

class RomanNumberConverterViewModel: ObservableObject {
    @Published var inputInt: String = ""
    @Published var inputRoman: String = ""
    @Published var resultRoman: String? = nil
    @Published var resultInt: String? = nil
    
    private let useCase: RomanNumberConverterUseCaseProtocol
    
    init(useCase: RomanNumberConverterUseCaseProtocol = RomanNumberConverterUseCase()) {
        self.useCase = useCase
    }
    
    func convertIntToRoman() {
        resultRoman = useCase.convertIntToRoman(Int(inputInt) ?? 0)
    }
    
    func convertRomanToInt() {
        resultInt = String(useCase.convertRomanToInt(inputRoman))
    }
    
    func resetIntToRoman() {
        inputInt = ""
        resultRoman = nil
    }
    
    func resetRomanToInt() {
        inputRoman = ""
        resultInt = nil
    }
    
}
