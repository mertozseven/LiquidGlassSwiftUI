//
//  ExpandedActionsView.swift
//  LiquidGlassExample
//
//  Created by Mert Ozseven on 13.08.2025.
//

import SwiftUI

// MARK: - ExpandedActionsView

struct ExpandedActionsView: View {

    // MARK: Properties

    @Binding var isSaved: Bool
    @Binding var isLiked: Bool
    let namespace: Namespace.ID

    // MARK: body

    var body: some View {
        HStack(spacing: 16) {
            ShareButton(namespace: namespace)
            SaveButton(isSaved: $isSaved, namespace: namespace)
            LikeButton(isLiked: $isLiked, namespace: namespace)
        }
    }
}

// MARK: - ShareButton

private struct ShareButton: View {

    let namespace: Namespace.ID

    var body: some View {
        Button {
            print("Share tapped")
        } label: {
            Image(systemName: "square.and.arrow.up")
                .actionIcon()
        }
        .glassCircleButton()
        .glassEffectID("Share", in: namespace)
    }
}

// MARK: - SaveButton

private struct SaveButton: View {

    @Binding var isSaved: Bool
    let namespace: Namespace.ID

    var body: some View {
        Button {
            isSaved.toggle()
            print(isSaved ? "Saved" : "Unsaved")
        } label: {
            Image(systemName: isSaved ? "bookmark.fill" : "bookmark")
                .actionIcon()
        }
        .glassCircleButton()
        .glassEffectID("Save", in: namespace)
    }
}

// MARK: - LikeButton

private struct LikeButton: View {

    @Binding var isLiked: Bool
    let namespace: Namespace.ID

    var body: some View {
        Button {
            isLiked.toggle()
            print(isLiked ? "Liked" : "Unliked")
        } label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .actionIcon()
        }
        .glassCircleButton(tint: isLiked ? .red : .white)
        .glassEffectID("Like", in: namespace)
    }
}
