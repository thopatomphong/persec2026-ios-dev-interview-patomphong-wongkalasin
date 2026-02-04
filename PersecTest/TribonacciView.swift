//
//  TribonacciView.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import SwiftUI

struct TribonacciView: View {
    @StateObject private var viewModel = TribonacciViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    
                    HStack(spacing: 20) {
                        Text("numbers").font(.subheadline).frame(maxWidth: 80)
                        
                        TextField("Input numbers e.g. 10, 10, 10", text: $viewModel.inputNumbers)
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                        
                    }
                    
                    HStack(spacing: 20) {
                        
                        Text("n").font(.subheadline).frame(maxWidth: 80)
                        
                        TextField("Input n e.g. 4", text: $viewModel.inputN)
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                        
                    }.padding(.bottom, 12)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            viewModel.tribonacci()
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
                    
                }
                .padding(.bottom, 12)
                
                if let result = viewModel.result {
                    Text(verbatim: "Result: \(result)")
                }
                
                Spacer()
            }
            .padding(.horizontal)
            
            
        }
        .navigationTitle("6. Tribonacci")
    }
}

// MARK: - Preview
struct TribonacciView_Previews: PreviewProvider {
    static var previews: some View {
        TribonacciView()
    }
}

