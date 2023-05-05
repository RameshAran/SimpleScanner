//
//  ContentView.swift
//  SimpleScanner
//
//  Created by ASAHI-GH22011 on 2023/05/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Scan a document")
                    .font(.title)
                    .padding()
                DocumentScannerView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
