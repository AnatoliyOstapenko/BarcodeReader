//
//  BarcodeTextView.swift
//  BarcodeReader
//
//  Created by AnatoliiOstapenko on 02.02.2023.
//

import SwiftUI

struct BarcodeTextView: View {
    
    let statusText: String
    let statusColor: Color
    
    var body: some View {
        Text(statusText)
            .font(.largeTitle)
            .bold()
            .foregroundColor(statusColor)
            .padding()
    }
}

//struct BarcodeTextView_Previews: PreviewProvider {
//    static var previews: some View {
//        BarcodeTextView(scannedCode: .constant("Scanned Object"))
//    }
//}
