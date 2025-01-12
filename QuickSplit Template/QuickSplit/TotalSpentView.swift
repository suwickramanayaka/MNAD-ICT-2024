//
//  TotalSpentView.swift
//  QuickSplit
//
//  Created by Pubudu Mihiranga on 2024-11-10.
//

import SwiftUI

struct TotalSpentView: View {
    //@Binding var splitAmount: Double?
    
    //@State private var totalExpenses: Double = 250.0
    @State private var savedTotalExpenses: Double = 0.0
    
    @AppStorage("finalSplitAmount") var splitAmpunt:Double?
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Overall you spent:")
                    .font(.title)
                
                Text("LKR \(splitAmpunt ?? 0.0, specifier: "%.2f")")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Button("Reset") {
                    splitAmpunt = savedTotalExpenses
                }
                .foregroundStyle(.red)
                .buttonStyle(.bordered)
                .padding(.top, 20)
            }
            .padding()
            .navigationTitle("Expenses")
        }
    }
}

#Preview {
    TotalSpentView()
}
