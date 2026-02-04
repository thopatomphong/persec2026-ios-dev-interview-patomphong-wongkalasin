//
//  BracketValidatorView.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import SwiftUI

struct BracketValidatorView: View {
    @StateObject private var viewModel = BracketValidatorViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    
                    TextField("Input text e.g. {[()]}", text: $viewModel.inputText)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            viewModel.validateBrackets()
                        }) {
                            Text("Submit")
                        }
                        
                        Button(action: {
                            viewModel.reset()
                        }) {
                            Text("Clear")
                        }
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    if let result = viewModel.result, !viewModel.inputText.isEmpty {
                        Text("Result: \(result ? "true" : "false")")
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                
            }
            .navigationTitle("1. Bracket Validator")
        }
    }
}

// MARK: - Preview
struct BracketValidatorView_Previews: PreviewProvider {
    static var previews: some View {
        BracketValidatorView()
    }
}
