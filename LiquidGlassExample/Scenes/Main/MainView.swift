//
//  ContentView.swift
//  LiquidGlassExample
//
//  Created by Mert Ozseven on 13.08.2025.
//

import SwiftUI

struct MainView: View {

    let quote: String

    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 16) {
                QuoteView(quote: quote)
                ActionButtonsView()
            }
        }
    }
}

#Preview {
    MainView(quote: "Liquid Glass Example")
}
