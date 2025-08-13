//
//  View+Extension.swift
//  LiquidGlassExample
//
//  Created by Mert Ozseven on 13.08.2025.
//

import SwiftUI

extension View {
    func glassCircleButton(diameter: CGFloat = 64, tint: Color = .white) -> some View {
        self
            .foregroundStyle(tint)
            .frame(width: diameter, height: diameter)
            .contentShape(Circle())
            .glassEffect(.clear.interactive())
            .clipShape(Circle())
    }

    func actionIcon(font: Font = .title2) -> some View {
        self
            .font(font)
            .contentTransition(.symbolEffect(.replace))
    }
}
