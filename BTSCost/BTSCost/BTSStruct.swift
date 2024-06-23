//
//  BTSStruct.swift
//  BTSCost
//
//  Created by Admin on 22/6/2567 BE.
//

import Foundation

struct BTSStruct: Identifiable {
    var id: UUID=UUID()
    var cost: Int
    var dist: Int
}

//func Multiply(a: Int, b: Int) -> Int {
//    return a * b;
//}


//func findStation(s:String)->Int {
//    let station: [String]=["N5","N4","N3","N2","N1","E1","E2","E3","E4","E5"]
//    for i in 0...station.count {
//        if s == station[i] {
//            return i
//        }
//    }
//    return 0
//}

