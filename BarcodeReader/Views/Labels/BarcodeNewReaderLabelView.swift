//
//  BarcodeNewReaderLabelView.swift
//  BarcodeReader
//
//  Created by AnatoliiOstapenko on 02.02.2023.
//

import SwiftUI

struct BarcodeNewReaderLabelView: View {
    var body: some View {
        /// Imitation of button
        Label("Go to the Barcode New Reader", systemImage: "chevron.forward.circle")
            .font(.subheadline)
            .foregroundColor(Color(.label))
            .fontWeight(.semibold)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(Color(.systemGray5))
            .cornerRadius(20)
    }
}

