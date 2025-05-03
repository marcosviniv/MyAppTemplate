//
//  TabBarModule.swift
//  MyAppTemplate
//
//  Created by Marcos Vinícius Vieira on 01/05/25.
//

import SwiftUI

struct TabBarModule: View {
    @State private var selectedTab: Tab = .home
    @Namespace private var animation

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(Tab.home)
                    .ignoresSafeArea(.keyboard)
                SearchView()
                    .tag(Tab.search)
                    .ignoresSafeArea(.keyboard)
                FavoritesView()
                    .tag(Tab.favorites)
                    .ignoresSafeArea(.keyboard)
                SettingsView()
                    .tag(Tab.settings)
                    .ignoresSafeArea(.keyboard)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

            CustomTabView(selectedTab: $selectedTab, namespace: animation)
                .padding(.bottom, 20)
        }
        
        .ignoresSafeArea()
    }
}




