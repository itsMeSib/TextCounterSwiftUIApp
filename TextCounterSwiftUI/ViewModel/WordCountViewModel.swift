//
//  WordCountViewModel.swift
//  TextCounterSwiftUI
//
//  Created by Shahzaib Iqbal Bhatti  on 01/02/2023.
//

import Foundation

class WordCountViewModel: ObservableObject {
    @Published var text = ""
    var wordCount: Int {
        //        This approach give a vague but fast result but will not handle the edge cases
        //        return text.split(separator: " ").count

        //        This approach give a result with only letters, fast result but will not handle the edge cases and is not the recommended way
        //        return text.split { !$0.isLetter }.count

        //        This approach is the best and use latest swift enumerateSubstrings which generates more accurate results
        return text.wordCount
    }
}

extension String {
    var wordCount: Int {
        var count = 0
        enumerateSubstrings(in: startIndex..<endIndex, options: .byWords) { _,_,_,_ in
            count += 1
        }
        return count
    }
}
