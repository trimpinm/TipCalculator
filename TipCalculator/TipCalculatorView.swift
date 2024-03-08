

import Foundation

import SwiftUI

struct TipCalculatorView: View {
    @State var tipPercentage = 15.0
    @State var total = ""
    @State var calculated = false
    
    var body: some View {
        VStack {
            Image(systemName: "dollarsign.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Tip Calculator")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
            
            HStack {
                Text("$")
                TextField("Bill Total", text: $total)

            }
            
            if let doubleTotal = Double(total) {
                HStack {
                    Text("Select tip amount:")
                    Slider(value: $tipPercentage,
                           in: 0...30,
                           step: 1.0)
                    Text("\(tipPercentage, specifier: "%0.2f")")
                    Text("%")
                }
                let tipTotal = doubleTotal * tipPercentage / 100
                Text("Tip: $ \(tipTotal, specifier: "%0.2f")")
                Text("Total: $\(tipTotal + doubleTotal, specifier: "%0.2f")")
                
            } else {
                Text("Please enter your bill total")
            }

        }
        
    }
    
}


