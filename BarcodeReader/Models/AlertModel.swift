//
//  AlertModel.swift
//  BarcodeReader
//
//  Created by AnatoliiOstapenko on 02.02.2023.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

/// Mock alert messages
struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                 message: "Something is wrong with camera. Disable to capture the input",
                                 dismissButton: .default(Text("OK")))
    static let invalidScannedValue = AlertItem(title: "Invalid Scanned Value",
                                 message: "Scanned Value isn't valid. This app scan EAN-8 and EAN-13",
                                 dismissButton: .default(Text("OK")))
}

