//
//  Result.swift
//  BTSCost
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

struct Result: View {
    @Binding var money: Int
    @Binding var station: String
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Text("ผลลัพธ์")
    }
}

#Preview {
    Result(money: .constant(0), station: .constant(""))
}
