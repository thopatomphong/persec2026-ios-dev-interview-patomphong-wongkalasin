//
//  AutoCompleteView.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import SwiftUI

struct AutoCompleteView: View {
    @StateObject private var viewModel = AutoCompleteViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    
                    TextField("Input search keyword e.g. th", text: $viewModel.search)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    TextField("Input items text e.g. Mother, Think, Worthy, Apple, Android", text: $viewModel.items)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    TextField("Input max result e.g. 2", text: $viewModel.maxResult)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            viewModel.autocomplete()
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
                    
                    if let result = viewModel.result {
                        Text(verbatim: "Result: \(result)")
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("3. Auto Complete")
        }
    }
}

// MARK: - Preview
struct AutoCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        AutoCompleteView()
    }
}
