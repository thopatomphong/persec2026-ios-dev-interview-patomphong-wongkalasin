//
//  NumbersSortView.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import SwiftUI

struct NumbersSortView: View {
    @StateObject private var viewModel = NumbersSortViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    
                    
                    TextField("Input number e.g. 3008", text: $viewModel.inputText)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            viewModel.sortNumber()
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
                        Text(verbatim: "Result: \(result)")
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("5. Sort Numbers")
        }
    }
}

// MARK: - Preview
struct NumbersSortView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersSortView()
    }
}
