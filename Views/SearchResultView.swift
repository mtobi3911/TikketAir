//
//  SearchResultView.swift
//  TikketAir
//
//  Created by MrRobot on 17.06.2024.
//

import Foundation
import SwiftUI

struct SearchResultView: View {
    @State private var departure: String = "Москва"
    @State private var destination: String = "Турция"
    @State private var departureDate = Date()
    @State private var returnDate: Date?
    
    var body: some View {
        VStack {
            HStack {
                Button(action: swapLocations) {
                    Image(systemName: "arrow.right.arrow.left")
                        .padding()
                }
                VStack {
                    TextField("Откуда - Москва", text: $departure)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Куда - Турция", text: $destination)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
            DatePicker("Дата отправления", selection: $departureDate, displayedComponents: .date)
                .padding()
            DatePicker("Дата обратного билета", selection: Binding(
                get: { self.returnDate ?? Date() },
                set: { self.returnDate = $0 }),
                displayedComponents: .date)
                .padding()
            Button("Поиск билетов") {
                // Реализовать переход к экрану "Просмотреть все билеты"
            }
            .padding()
        }
        .padding()
    }
    
    private func swapLocations() {
        let temp = departure
        departure = destination
        destination = temp
    }
}

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView()
    }
}
