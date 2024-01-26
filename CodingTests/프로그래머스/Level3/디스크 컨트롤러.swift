//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 1/26/24.
//

import Foundation

func solution(_ jobs:[[Int]]) -> Int {
    
    //EX) [[7, 8], [3, 5], [9, 6]] => 8
    //먼저 정렬을 잘해줌
    var currentTime = 0
    var average = 0
    var job = jobs.sorted { $0[1] == $1[1] ? $0[0] < $1[0] :  $0[1] < $1[1]   }
    // 정렬 후 뒤를 기준으로, 같으면 앞에도 정렬. [[3, 5], [9, 6], [7, 8]]
    // [3,5]는 currentTime 이 3일때 가능하다. 0이면 += 1 해주면서 3이 됨
    
    while !job.isEmpty {
                
        for i in 0..<job.count {
            
            if job[i][0] <= currentTime {
                print(job[i])
                currentTime += job[i][1]
                //[3, 5] currentTime에 5를 더해준다
                print(currentTime)
                average += (currentTime - job[i][0])
                //[3, 5] currentTime - 3 빼준다
                print(average)
                job.remove(at: i)
                break
            }
            if i == job.count - 1 {
                currentTime += 1
            }
          
            
        }
    }
    

    let result = (average / jobs.count)
    print(result)
    return result
}
//
//solution([[7, 8], [3, 5], [9, 6]])





//[[0, 3], [10, 1]] => 2
//[[7, 8], [3, 5], [9, 6]] => 8
//[[1, 4], [7, 9], [1000, 3]] => 5
//[[0, 1], [2, 2], [2, 3]] => 2


