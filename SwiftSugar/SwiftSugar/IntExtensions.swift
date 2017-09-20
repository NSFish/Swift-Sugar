//
//  IntExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 03/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension Int {
    public func times(_ repeat: () -> Void) {
        
        for _ in 0..<self {
            `repeat`()
        }
    }
    
    public func timesWithIndex(_ repeat: (_ index: Int) -> Void) {
        
        for i in 0..<self {
            `repeat`(i)
        }
    }
    
    public func upTo(_ upperLimit:Int, doTask: (_ number: Int) -> Void) {
        
        for i in self..<upperLimit{
            doTask(i)
        }
    }
    
    public func downTo(_ lowerLimit:Int, doTask: (_ number: Int) -> Void) {
        
        let range = lowerLimit...self
        
        for i in range.reversed() {
            doTask(i)
        }
    }
}
