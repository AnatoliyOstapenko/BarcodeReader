//
//  CameraErrors.swift
//  BarcodeReader
//
//  Created by AnatoliiOstapenko on 01.02.2023.
//

import Foundation

enum CameraErrors: String {
    case invalidDeviceInput = "Something is wrong with camera. Disable to capture the input."
    case invalidScannedValue = "Scanned Value isn't valid. This app scan EAN-8 and EAN-13"
}
