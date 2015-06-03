//
//  String+Subscripts.swift
//  EPICStringSubscripts
//
//  Created by Danny Bravo on 03/06/2015.
//  Copyright (c) 2015 EPIC. All rights reserved.
//

import Foundation

extension String {
  
    //MARK: - Indexes
    // A wrapper for using string subscripts with `Int` instead of `String.Index` indexes
    subscript(index: Int) -> String {
        get {
            let index = advance(self.startIndex, index)
            return String(self[index])
        }
        set(newValue) {
            let index = advance(self.startIndex, index)
            let range = index...index
            self = stringByReplacingCharactersInRange(range, withString: newValue)
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
        let indexStart = advance(self.startIndex, range.startIndex)
        let indexEnd = advance(self.startIndex, range.endIndex)
        return indexStart..<indexEnd
    }
    
}
