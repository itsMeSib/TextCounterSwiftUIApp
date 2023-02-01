//
//  ContentView.swift
//  TextCounterSwiftUI
//
//  Created by Shahzaib Iqbal Bhatti  on 01/02/2023.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel: WordCountViewModel

    var body: some View {
        VStack {
            Text("Word count: \(viewModel.wordCount)")
                .padding()

            TextField("Enter text here", text: $viewModel.text)
                .padding()
                .background(Color(.lightGray.withAlphaComponent(0.1)))
                .cornerRadius(5)
        }
        .padding(32)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: WordCountViewModel())
    }
}
