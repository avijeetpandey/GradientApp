//
//  AsyncImageView.swift
//  GradientApp
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - AsyncImageView
struct AsyncImageView: View {
    
    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        // loading remote image, greater the scale value lesser the image is
        AsyncImage(url: URL(string: imageUrl), scale: 3.0) { image in
            image
                .resizable()
                .scaledToFit()
        }placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 120)
                .foregroundStyle(.teal.gradient)
        }.padding()
    }
}

#Preview {
    AsyncImageView()
}
