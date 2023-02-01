//
//  ContentView.swift
//  BarcodeReaderView
//
//  Created by AnatoliiOstapenko on 31.01.2023.
//

import SwiftUI
import VisionKit

struct BarcodeReaderView: View {
    
    @State private var scannedCode = ""

    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    ScannerView(scannedCode: $scannedCode)
                        .frame(maxWidth: .infinity,
                               maxHeight: geometry.size.width / 1.5)
                   
                    Spacer().frame(height: 50)
                    
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)

                    Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(scannedCode.isEmpty ? .red : .green)
                        .padding()
                }
                .navigationTitle("Barcode Reader")
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeReaderView()
            
    }
}

