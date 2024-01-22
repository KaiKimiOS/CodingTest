//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/22/24.
//

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    var truckWeights = truck_weights
    var array = Array(repeating: 0, count: bridge_length)
    var totalTime = 0
    var bridgeWeight = 0
    
    while !array.isEmpty  {
        
        totalTime += 1
        bridgeWeight -= array.removeFirst()
        
        if let first = truckWeights.first {
            
            if first + bridgeWeight <= weight {
                array.append(first)
                bridgeWeight += truckWeights.removeFirst()
            } else {
                array.append(0)
            }
        }
    }
    
    return totalTime
}


