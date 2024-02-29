//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/29/24.
//

import Foundation


func solution(_ s:String) -> String {
    
    var abc = s.split(separator: " ").compactMap { Int(String($0))  }.sorted(by: <)

    print("\(abc.first!) \(abc.last!)")
   
    return "\(abc.first!) \(abc.last!)"
}

solution("-1 -1")
