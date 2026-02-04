//
//  RomanNumberConverterView.swift
//  PersecTest
//
//  Created by Patomphong Wongkalasin on 4/2/2569 BE.
//

import SwiftUI

struct RomanNumberConverterView: View {
    @StateObject private var viewModel = RomanNumberConverterViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
 
                    HStack(spacing: 20) {
                        Text("Int to Ronman").font(.subheadline)
                        
                        TextField("Input Int Number e.g. 6", text: $viewModel.inputInt)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 8)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    .padding(.bottom, 12)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            viewModel.convertIntToRoman()
                        }) {
                            Text("Submit")
                        }
                        
                        Button(action: {
                            viewModel.resetIntToRoman()
                        }) {
                            Text("Clear")
                        }
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    if let result = viewModel.resultRoman {
                        Text(verbatim: "Result: \(result)")
                    }
                }
                .padding(.horizontal)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                
                VStack(alignment: .leading, spacing: 8) {
 
                    HStack(spacing: 20) {
                        Text("Ronman to Int").font(.subheadline)
                        
                        TextField("Input Roman Number e.g. VI", text: $viewModel.inputRoman)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 8)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    .padding(.bottom, 12)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            viewModel.convertRomanToInt()
                        }) {
                            Text("Submit")
                        }
                        
                        Button(action: {
                            viewModel.resetRomanToInt()
                        }) {
                            Text("Clear")
                        }
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    if let result = viewModel.resultInt {
                        Text(verbatim: "Result: \(result)")
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
            }
            .navigationTitle("4. Roman Converter")
        }
    }
}

// MARK: - Preview
struct RomanNumberConverterView_Previews: PreviewProvider {
    static var previews: some View {
        RomanNumberConverterView()
    }
}
