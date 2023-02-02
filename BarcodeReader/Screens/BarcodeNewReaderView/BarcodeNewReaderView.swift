//
//  BarcodeNewReaderView.swift
//  BarcodeReader
//
//  Created by AnatoliiOstapenko on 02.02.2023.
//

// TODO: - Create a scanner that can be activated by pressed button

import SwiftUI

struct BarcodeNewReaderView: View {
    
    @Binding var isShowingBarcodeReaderView: Bool

    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(width: geometry.size.width,
                          height: geometry.size.height / 3)
                    Label("New Barcode Reader", systemImage: "barcode")
                        .bold()
                        .padding()
                    Text("Not Yet Scanned")
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Scan")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    .foregroundColor(Color(.label))
                    Spacer()

                }
                .navigationTitle("Barcode New Reader")
            }
        }
    }
}

struct BarcodeReaderNewView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeNewReaderView(isShowingBarcodeReaderView: .constant(false))
    }
}



