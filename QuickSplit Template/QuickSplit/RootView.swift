//
//  RootView.swift
//  QuickSplit
//
//  Created by Pubudu Mihiranga on 2024-11-10.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        
        TabView {
            // system image name = calendar.badge.checkmark
            CalculatorView().tabItem {
                Label("Calculator", systemImage: "calendar.badge.checkmark")
            }
                
            // system image name = list.bullet
            TotalSpentView().tabItem {
                Label("Expenses", systemImage: "list.bullet")
            }
        }
    }
}

#Preview {
    RootView()
}
