//
//  Formula.swift
//  Calculator
//
//  Created by 세윤 on 2022/09/14.
//

import Foundation


struct Formula {
    var operands: CalculatorItemQueue<Double>
    var operators: CalculatorItemQueue<String>

    mutating func result() -> Double {
        var value: Double = operands.dequeue() ?? 0
        
        operators.list.forEach {
            switch $0 {
            case "+":
                value += operands.dequeue() ?? 0
            case "-":
                value -= operands.dequeue() ?? 0
            case "×":
                value *= operands.dequeue() ?? 1
            case "÷":
                value /= operands.dequeue() ?? 1
            default:
                return
            }
        }
        
        return value
    }
}
