//
//  TicketsView.swift
//  TikketAir
//
//  Created by MrRobot on 17.06.2024.
//

import Foundation
import SwiftUI

struct TicketsView: View {
    @StateObject private var viewModel = TicketsViewModel()
    @State private var departure: String = "Москва"
    @State private var destination: String = "Турция"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Хардкод заголовка")
                    .font(.title)
                TextField("Откуда - Москва", text: $departure)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.alphabet)
                TextField("Куда - Турция", text: $destination)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.alphabet)
                Text("Хардкод заголовка")
                    .font(.title)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(viewModel.offers) { offer in
                            VStack {
                                Text(offer.title)
                                Text(offer.town)
                                Text(offer.price.value)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Главная")
        }
    }
}

struct TicketsView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsView()
    }
}
