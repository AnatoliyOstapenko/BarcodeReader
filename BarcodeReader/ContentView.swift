//
//  ContentView.swift
//  BarcodeReader
//
//  Created by AnatoliiOstapenko on 31.01.2023.
//

import SwiftUI

struct BarcodeReaderView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeReaderView()
    }
}
