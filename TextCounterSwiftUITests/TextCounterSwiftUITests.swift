//
//  TextCounterSwiftUITests.swift
//  TextCounterSwiftUITests
//
//  Created by Shahzaib Iqbal Bhatti  on 01/02/2023.
//

import XCTest
import SwiftUI
@testable import TextCounterSwiftUI

final class TextCounterSwiftUITests: XCTestCase {

    func testWordCountViewModel() {
        let vm = WordCountViewModel()
        vm.text = "This is a test"
        XCTAssertEqual(vm.wordCount, 4)
    }

    func testWordCount_VM_Handle_Special_Char() {
        let vm = WordCountViewModel()
        vm.text = """
                This is a test $ hello world

                hahahaha this is a test     tab sapeced
        """
        XCTAssertEqual(vm.wordCount, 13)
    }
}
