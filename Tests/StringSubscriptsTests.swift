//
//  StringSubscriptsTests.swift
//  EPICStringSubscripts
//
//  Created by Danny Bravo on 03/06/2015.
//  Copyright (c) 2015 EPIC. All rights reserved.
//  See LICENSE.txt for this sample’s licensing information
//

import UIKit
import XCTest

class StringSubscriptsTests: XCTestCase {

    var string = "HelloWorld!"
    var emojiString = "emoji test: 🌑🌒🌓🌔🌕🌖🌗🌘"
    
    func testGetters() {
        XCTAssertEqual(string[5], "W")
        XCTAssertEqual(string[1], "e")
        
        XCTAssertEqual(emojiString[12], "🌑")
        XCTAssertEqual(emojiString[14], "🌓")
        XCTAssertEqual(emojiString[9], "t")
        
        XCTAssertEqual(string[1...4], "ello")
        XCTAssertEqual(string[1..<4], "ell")
        
        XCTAssertEqual(emojiString[12...16], "🌑🌒🌓🌔🌕")
        XCTAssertEqual(emojiString[12..<16], "🌑🌒🌓🌔")
    }

    func testSetters() {
        XCTAssertEqual(string[5], "W")
        string[5] = "?"
        XCTAssertEqual(string[5], "?")
        XCTAssertEqual(string, "Hello?orld!")
        
        XCTAssertEqual(string[5...9], "?orld")
        string[5...9] = "REPLACEMENT"
        XCTAssertEqual(string[5...9], "REPLA")
        XCTAssertEqual(string, "HelloREPLACEMENT!")
        
        XCTAssertEqual(string[5..<16], "REPLACEMENT")
        string[5..<16] = "🌍"
        XCTAssertEqual(string[5..<6], "🌍")
        XCTAssertEqual(string, "Hello🌍!")
        
        XCTAssertEqual(emojiString[16], "🌕")
        emojiString[16] = "?"
        XCTAssertEqual(emojiString[16], "?")
        XCTAssertEqual(emojiString, "emoji test: 🌑🌒🌓🌔?🌖🌗🌘")
        
        XCTAssertEqual(emojiString[0...11], "emoji test: ")
        emojiString[0...11] = ""
        XCTAssertEqual(emojiString[3...5], "🌔?🌖")
        XCTAssertEqual(emojiString, "🌑🌒🌓🌔?🌖🌗🌘")
        
        XCTAssertEqual(emojiString[4..<5], "?")
        emojiString[4..<5] = "🌍"
        XCTAssertEqual(emojiString[4..<5], "🌍")
        XCTAssertEqual(emojiString, "🌑🌒🌓🌔🌍🌖🌗🌘")
    }
}
