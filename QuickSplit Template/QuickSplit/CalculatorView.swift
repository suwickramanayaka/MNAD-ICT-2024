//
//  CalculatorView.swift
//  QuickSplit
//
//  Created by Pubudu Mihiranga on 2024-11-10.
//
// Name : Sithum wickramanayaka
// IIT No : 20210799
// UOW No : w1868298

import SwiftUI

struct CalculatorView: View {
    // properties
    @State private var totalAmount: String = ""
    @State private var tip: String = ""
    @State private var numberOfPeople: String = ""
    @State private var splitAmount: Double? = nil
    @State private var showAlert: Bool = false
    
    @AppStorage("finalSplitAmount") var splitAmpunt:Double?
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                // total amount field
                TextField("Total Amount", text: $totalAmount)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // tip field
                TextField("Tip Amount(%)", text: $tip)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // number of the people field
                TextField("Number of People", text: $numberOfPeople)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Calculate") {
                    // this explicist function calculate the payment for each person
                    calculateSplitAmount()
                }
                .foregroundColor(.green)
                .buttonStyle(.bordered)
                .alert(isPresented: $showAlert) {
                    // Alert box
                    Alert(
                        title: Text("You owe"),
                        message: Text(splitAmountMessage()),
                        //primaryButton: .default(Text("OK"),)
                        primaryButton: .default(Text("Save Expenses")) {
                                    saveExpenses()
                                },
                        secondaryButton: .default(Text("Cancel"))
                        //dismissButton: .cancel(Text("Save Expenses"))
                        
                    )
                }
            }
            .padding()
            .navigationTitle("QuickSplit")
            
            Spacer()
        }
    }
    
    private func saveExpenses() {
        guard let amount = splitAmount else { return }
        splitAmpunt = amount // Save to AppStorage
        print("Expenses saved: LKR \(String(format: "%.2f", amount))")
    }
    
    // buisness logic
    private func calculateSplitAmount() {
        // took the two variables tip precentage and people
        guard let total = Double(totalAmount),
              let tipPercentage = Double(tip),
              let people = Int(numberOfPeople),
              people > 0 else {
            splitAmount = nil
            showAlert = true
            return
        }
        // calculate the payemt for each tip and total amount
        let tipAmount = tipPercentage / Double(people)
        let totalWithTip = total / Double(people)
        splitAmount = totalWithTip + tipAmount
        showAlert = true
        
    
    }
    
    // Altert message
    private func splitAmountMessage() -> String {
        if let amount = splitAmount {
            return String(format: "LKR %.2f", amount)
        } else {
            return "Invalid input. Please enter valid numbers."
        }
    }
}

#Preview {
    CalculatorView()
}
