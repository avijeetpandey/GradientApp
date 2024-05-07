//
//  GradientText.swift
//  GradientApp
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - GradientView
struct GradientView: View {
    var body: some View {
        Text("iOS")
            .font(.system(size: 180))
            .fontWeight(.bold)
            .foregroundStyle(.teal.gradient)
        
        Text("Avijeet")
            .font(.system(size: 80))
            .fontWeight(.bold)
            .foregroundStyle(LinearGradient(
                colors: [.pink,
                         .purple,
                         .blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
    }
}

#Preview {
    GradientView()
}
