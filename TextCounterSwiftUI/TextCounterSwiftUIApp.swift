//
//  TextCounterSwiftUIApp.swift
//  TextCounterSwiftUI
//
//  Created by Shahzaib Iqbal Bhatti  on 01/02/2023.
//

import SwiftUI

@main
struct TextCounterSwiftUIApp: App {
    let viewModel = WordCountViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
