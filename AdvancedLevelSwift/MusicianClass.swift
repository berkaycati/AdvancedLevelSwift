//
//  MusicianClass.swift
//  AdvancedLevelSwift
//
//  Created by Berkay on 22.10.2022.
//

import Foundation

class MusicianClass {
    var name : String
    var age : Int
    var instrument : String
    
    init(nameInput : String, ageInput : Int, instrumentInput : String) {
        self.name = nameInput
        self.age = ageInput
        self.instrument = instrumentInput
    }
    
    func happyBirtday() {
        self.age += 1
    }
}
