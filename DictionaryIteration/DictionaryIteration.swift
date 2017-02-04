//
//  DictionaryIteration.swift
//  DictionaryIteration
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryIteration {
    
    var bands: [String:String] = ["Nirvana": "Nevermind",
                                  "Blondie": "Parallel Lines",
                                  "The Kinks": "Low Budget",
                                  "The Beatles": "Sgt. Pepper's Lonely Hearts Club Band"]
    
    func addPixie() {
        bands["Pixie"] = "Doolittle"
    }
    
    func removeKinks()  {
        bands["The Kinks"] = nil
    }
    
    func nirvanaBestSeller() -> String {
        let bandName = "Nirvana"
        let bandAlbum = bands["Nirvana"]
        var container = ""
        
        if let bandAlbum = bandAlbum {
           container += "\(bandName)'s top-selling album was \(bandAlbum)."
        }
        return container
    }
    
    func bestSellers() -> String {
        var sentence: String = ""
        for (Key,Value) in bands {
            sentence += "\(Key)'s top-selling album was \(Value)."
        }
        return sentence
    }
    
    func typeOfDataStructure() -> String {
        return "Tuple"
    }
    
    func typeOfDataStructureForSchool() -> String {
        return "B"
    }
    
    
    func highestGrade (_ grades: [Int: String]) {
        for (Key,Value) in grades {
            if Value == "A" {
                print(Key)
            }
        }
    }
    
}
