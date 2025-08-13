//
//  QuoteView.swift
//  LiquidGlassExample
//
//  Created by Mert Ozseven on 13.08.2025.
//

import SwiftUI

struct QuoteView: View {

    let quote: String

    var body: some View {
        Text(quote)
            .font(.largeTitle)
            .fontDesign(.serif)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding()
            .glassEffect(.clear.interactive())
    }
}

#Preview {
    QuoteView(quote: "Liquid Glass Example")
}
