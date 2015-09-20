//
//  String+Subscripts.swift
//  EPICStringSubscripts
//
//  Created by Danny Bravo on 03/06/2015.
//  Copyright (c) 2015 EPIC. All rights reserved.
//  See LICENSE.txt for this sample’s licensing information
//

import Foundation

extension String {
  
    //MARK: - Indexes
    // A wrapper for using string subscripts with `Int` instead of `String.Index` indexes
    subscript(index: Int) -> String {
        get {
            let index = self.startIndex.advancedBy(index)
            return String(self[index])
        }
        set(newValue) {
            let index = self.startIndex.advancedBy(index)
            self = stringByReplacingCharactersInRange(index...index, withString: newValue)
        }
    }
    
    //MARK: - Ranges
    // A wrapper for using string subscripts with `Int` instead of `String.Index` ranges
    subscript(range: Range<Int>) -> String {
        get {
            return self[stringRangeForIntRange(range)]
        }
        set(newValue) {
            self = stringByReplacingCharactersInRange(stringRangeForIntRange(range), withString: newValue)
        }
    }
    
    // Private utility for converting `Range<Int>` to `Range<String.Index>`
    private func stringRangeForIntRange(range:Range<Int>) -> Range<String.Index> {
        let indexStart = self.startIndex.advancedBy(range.startIndex)
        let indexEnd = self.startIndex.advancedBy(range.endIndex)
        return indexStart..<indexEnd
    }
    
}
