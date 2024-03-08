

import Foundation
import SwiftUI

struct TotalTipView: View {
    let doubleTotal: Double
    let tipPercentage: Double
    var body: some View {
        let tipAmount = calculateTip(billTotal: doubleTotal, tipPercentage: tipPercentage)
        VStack{
            Text("Tip: $\(tipAmount, specifier: "%0.2f")")
            Spacer()
            Text("Total: $\(tipAmount + doubleTotal, specifier: "%0.2f")")
        }
    }
}


func calculateTip(billTotal: Double, tipPercentage: Double) -> Double {
    let tipAmount = billTotal * tipPercentage / 100
    return tipAmount
}
