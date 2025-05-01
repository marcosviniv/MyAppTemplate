//
//  TabView.swift
//  MyAppTemplate
//
//  Created by Marcos Vinícius Vieira on 01/05/25.
//

import SwiftUI

struct TabView: View {
    
    @Binding var selectedTab: Tab
    var namespace: Namespace.ID
    @State private var yOffset: CGFloat = 0
    @State private var isTapped: Bool = false

    var body: some View {
        HStack(spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                TabButton(
                    tab: tab,
                    selectedTab: $selectedTab,
                    namespace: namespace,
                    isTapped: $isTapped
                )
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        selectedTab = tab
                        isTapped = true

                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                            isTapped = false
                        }

                        yOffset = 10
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.4)) {
                                yOffset = 0
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .background(
            BlurView(style: .systemThinMaterial)
        )
        .cornerRadius(25)
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: -5)
        .padding(.horizontal)
        .offset(y: yOffset)
    }
}

