//
//  ActionButtonsView.swift
//  LiquidGlassExample
//
//  Created by Mert Ozseven on 13.08.2025.
//

import SwiftUI

struct ActionButtonsView: View {
    @State private var isSaved: Bool = false
    @State private var isLiked: Bool = false
    @State private var isMoreShown: Bool = false
    @Namespace private var namespace

    var body: some View {
        GlassEffectContainer(spacing: 20) {
            VStack(spacing: 16) {
                if isMoreShown {
                    ExpandedActionsView(
                        isSaved: $isSaved,
                        isLiked: $isLiked,
                        namespace: namespace
                    )
                }

                ToggleButtonView(
                    isMoreShown: $isMoreShown,
                    namespace: namespace
                )
            }
        }
        .padding()
    }
}

private struct ToggleButtonView: View {

    @Binding var isMoreShown: Bool
    let namespace: Namespace.ID

    var body: some View {
        Button {
            print(isMoreShown ? "Close tapped" : "More tapped")
            withAnimation {
                isMoreShown.toggle()
            }
        } label: {
            Image(systemName: isMoreShown ? "multiply" : "ellipsis")
                .actionIcon()
        }
        .glassCircleButton()
        .glassEffectID("ToggleButton", in: namespace)
    }
}

#Preview {
    ActionButtonsView()
}
