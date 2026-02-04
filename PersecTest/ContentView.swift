//
//  ContentView.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: BracketValidatorView()) { Text("1. Bracket Validator") }
                NavigationLink(destination: StringArraySortView()) { Text("2. String Array Sort") }
                NavigationLink(destination: AutoCompleteView()) { Text("3. Auto Complete") }
                NavigationLink(destination: RomanNumberConverterView()) { Text("4. Roman Number Converter") }
                NavigationLink(destination: NumbersSortView()) { Text("5. Sort Numbers") }
                NavigationLink(destination: TribonacciView()) { Text("6. Tribonacci") }
            }
            .navigationTitle("Function")
        }
    }
}

#Preview {
    ContentView()
}
