//
//  AutoCompleteViewModel.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import Foundation
import Combine

class AutoCompleteViewModel: ObservableObject {
    @Published var search: String = ""
    @Published var items: String = ""
    @Published var maxResult: String = ""
    @Published var result: [String]? = nil
    
    private let useCase: AutoCompleteUseCaseProtocol
    
    init(useCase: AutoCompleteUseCaseProtocol = AutoCompleteUseCase()) {
        self.useCase = useCase
    }
    
    func autocomplete() {
        result = useCase.autocomplete(search: search,
                                      items: items.toArray(),
                                      maxResult: Int(self.maxResult) ?? 0)
    }
    
    func reset() {
        search = ""
        items = ""
        maxResult = ""
        result = nil    
    }
}
