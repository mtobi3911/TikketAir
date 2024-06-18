//
//  TicketListView.swift
//  TikketAir
//
//  Created by MrRobot on 17.06.2024.
//

import Foundation
import SwiftUI

struct TicketListView: View {
    @ObservedObject var viewModel = TicketsViewModel()
    
    var body: some View {
        VStack {
            List(viewModel.offers) { offer in
                VStack(alignment: .leading) {
                    Text(offer.title)
                        .font(.headline)
                    Text("\(offer.town) - \(offer.price.value) ₽")
                }
            }
        }
        .navigationTitle("Билеты")
    }
}

struct TicketListView_Previews: PreviewProvider {
    static var previews: some View {
        TicketListView()
    }
}
