//
//  Expressionarser.swift
//  Calculator
//
//  Created by 정연호 on 2022/09/15.
//

import Foundation

enum Expressionarser {
    static func parse(from input: String) -> Formula {
        
    }
    
    private static func componentsByOperators(from input: String) -> [String] {
        return input.replacingOccurrences(of: #"(?:(?<=[+×÷])-(?=\d))|^-|\d"#, with: "", options: .regularExpression).map { String($0) }
    }
}
