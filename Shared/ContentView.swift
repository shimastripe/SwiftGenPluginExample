//
//  ContentView.swift
//  Shared
//
//  Created by shimastripe on 2022/03/28.
//

import ColorKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .foregroundColor(customTextColor)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
