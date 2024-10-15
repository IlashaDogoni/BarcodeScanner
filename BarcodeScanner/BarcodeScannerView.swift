//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Ilya Kokorin on 29.08.2024.
//

import SwiftUI

struct AlertItem : Identifiable {
    let id =  UUID()
    let title: String
    let message : String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera. The input cannot be captured",
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedValue = AlertItem(title: "Invalid Scanned Value",
                                               message: "The value scanned is not valid. This app scans EAN-8 and EAN-13",
                                               dismissButton: .default(Text("OK")))
}

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView{
            VStack{
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem )
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
            .alert(item: $alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
