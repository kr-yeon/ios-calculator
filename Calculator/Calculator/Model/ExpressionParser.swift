//
//  Expressionarser.swift
//  Calculator
//
//  Created by 정연호 on 2022/09/15.
//

import Foundation

enum ExpressionParser {
    static func parse(from input: String) -> Formula {
        return Formula(operands: CalculatorItemQueue(list: input.replacingOccurrences(of: #"[+×÷]|(?<![+×÷])-"#, with: " ", options: .regularExpression).split{ $0 == " " }.map{ Double($0) ?? 0 }), operators: CalculatorItemQueue(list: componentsByOperators(from: input)))
    }
    
    private static func componentsByOperators(from input: String) -> [String] {
        return input.replacingOccurrences(of: #"(?:(?<=[+×÷])-(?=\d))|^-|\d"#, with: "", options: .regularExpression).map { String($0) }
    }
}
