//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Ilya Kokorin on 29.08.2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    
    var body: some View {
        NavigationView{
            VStack{
                ScannerView(scannedCode: $scannedCode )
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 15)

                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding(.all)
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
