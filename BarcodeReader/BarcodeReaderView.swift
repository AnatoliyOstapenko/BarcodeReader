//
//  ContentView.swift
//  BarcodeReaderView
//
//  Created by AnatoliiOstapenko on 31.01.2023.
//

import SwiftUI
import VisionKit

struct BarcodeReaderView: View {
    
    
    

    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    Rectangle()
                        .frame(maxWidth: .infinity,
                               maxHeight: 300)
                   
                    Spacer().frame(height: 50)
                    
                    Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                        .font(.title)

                    Text("Not Yet Scanned")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.red)
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

