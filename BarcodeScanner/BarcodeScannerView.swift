//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Ilya Kokorin on 29.08.2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 15)

                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding(.all)
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
