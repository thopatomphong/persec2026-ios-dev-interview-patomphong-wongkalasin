//
//  StringArraySortView.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import SwiftUI

struct StringArraySortView: View {
    @StateObject private var viewModel = StringArraySortViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    
                    TextField("Input text e.g. TH19, SG20, TH2", text: $viewModel.inputText)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            viewModel.sortStringArray()
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
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
            .navigationTitle("2. String Array Sort")
        }
    }
}

// MARK: - Preview
struct StringArraySortView_Previews: PreviewProvider {
    static var previews: some View {
        StringArraySortView()
    }
}
