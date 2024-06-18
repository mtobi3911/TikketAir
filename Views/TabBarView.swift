//
//  TabBarView.swift
//  TikketAir
//
//  Created by MrRobot on 17.06.2024.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            TicketsView()
                .tabItem {
                    Label("Авиабилеты", systemImage: "airplane")
                }
            PlaceholderView()
                .tabItem {
                    Label("Отели", systemImage: "house")
                }
            PlaceholderView()
                .tabItem {
                    Label("Короче", systemImage: "ellipsis")
                }
            PlaceholderView()
                .tabItem {
                    Label("Подписки", systemImage: "bell")
                }
            PlaceholderView()
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
    }
}

struct PlaceholderView: View {
    var body: some View {
        Text("Заглушка")
            .font(.largeTitle)
            .foregroundColor(.gray)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
