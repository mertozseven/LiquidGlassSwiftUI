//
//  BackgroundView.swift
//  LiquidGlassExample
//
//  Created by Mert Ozseven on 13.08.2025.
//

import SwiftUI

struct BackgroundView: View {

    var body: some View {
        Image(.forest)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
