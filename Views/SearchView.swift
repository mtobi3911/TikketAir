//
//  SearchView.swift
//  TikketAir
//
//  Created by MrRobot on 17.06.2024.
//

import Foundation
import SwiftUI

struct SearchView: View {
    @Binding var destination: String
    
    var body: some View {
        VStack {
            HStack {
                TextField("Куда - Турция", text: $destination)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: {
                    destination = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                }
            }
            List {
                // Хардкод рекомендаций
                Button("Сложный маршрут") { /* Показ заглушки */ }
                Button("Куда угодно") { destination = "Куда угодно" }
                Button("Выходные") { /* Показ заглушки */ }
                Button("Горящие билеты") { /* Показ заглушки */ }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    @State static var destination = "Турция"
    static var previews: some View {
        SearchView(destination: $destination)
    }
}
