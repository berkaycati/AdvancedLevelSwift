//
//  MusicianStruct.swift
//  AdvancedLevelSwift
//
//  Created by Berkay on 22.10.2022.
//

import Foundation

struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    
    mutating func happyBirthday() { // we need to write mutating infrontof fucn word to create func
        self.age += 1
    }
    
}


