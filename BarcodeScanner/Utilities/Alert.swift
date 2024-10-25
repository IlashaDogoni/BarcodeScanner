//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Ilya Kokorin on 22.10.2024.
//

import SwiftUI

struct AlertItem : Identifiable {
    let id =  UUID()
    let title: Text
    let message : Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"),
                                              message: Text("Something is wrong with the camera. The input cannot be captured"),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedValue = AlertItem(title: Text("Invalid Scanned Value"),
                                               message: Text("The value scanned is not valid. This app scans EAN-8 and EAN-13"),
                                               dismissButton: .default(Text("OK")))
}
