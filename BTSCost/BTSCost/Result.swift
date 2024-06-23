//
//  Result.swift
//  BTSCost
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

struct Result: View {
    @Binding var start: String
    @Binding var end: String
    @State var station: [String]=["N24","N23","N22","N21","N20","N19","N18","N17","N16","N15","N14","N13","N12","N11","N10","N9","N8","N7","N6","N5","N4","N3","N2","N1","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E11","E12","E13","E14","E15","E16","E17","E18","E19","E20","E21","E22","E23"] // 47 station
//    @State
    @Environment(\.dismiss) var dismiss
    var body: some View {
//        For
        Text("d")
    }
}

#Preview {
    Result(start: .constant(""), end: .constant(""))
}
