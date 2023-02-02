//
//  ContentView.swift
//  BarcodeReaderView
//
//  Created by AnatoliiOstapenko on 31.01.2023.
//

import SwiftUI
import VisionKit

struct BarcodeReaderView: View {
    
    @StateObject var barcodeReaderViewModel = BarcodeReaderViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    ScannerView(scannedCode: $barcodeReaderViewModel.scannedCode, alertItem: $barcodeReaderViewModel.alertItem)
                        .frame(maxWidth: .infinity,
                               maxHeight: geometry.size.width / 1.5)
                    
                    Spacer().frame(height: 50)
                    
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)
                    
                    BarcodeTextView(statusText: barcodeReaderViewModel.statusText, statusColor: barcodeReaderViewModel.statusColor)
                    
                    Spacer()
                    
                    NavigationLink {
                        BarcodeNewReaderView(isShowingBarcodeReaderView: $barcodeReaderViewModel.isShowingBarcodeReaderView)
                    } label: {
                        BarcodeNewReaderLabelView()
                    }
                    
                    Spacer()
                }
                .navigationTitle("Barcode Reader")
                .alert(item: $barcodeReaderViewModel.alertItem) { alertItem in
                    Alert(title: Text(alertItem.title),
                          message: Text(alertItem.message),
                          dismissButton: alertItem.dismissButton)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeReaderView()
        
    }
}





