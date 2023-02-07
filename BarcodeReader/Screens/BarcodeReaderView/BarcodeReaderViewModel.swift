//
//  BarcodeReaderViewModel.swift
//  BarcodeReader
//
//  Created by AnatoliiOstapenko on 02.02.2023.
//

import Foundation
import SwiftUI

final class BarcodeReaderViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var isShowingBarcodeReaderView = false
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
