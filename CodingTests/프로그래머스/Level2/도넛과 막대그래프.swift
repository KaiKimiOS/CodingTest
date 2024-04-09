//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 4/9/24.
//

import Foundation

func solution(_ edges:[[Int]]) -> [Int] {
    
    // 1.edge의 출발과 도착을 저장하기 위한 dictionary 구조
    // EX) 11: [[1, 9], [4, 7, 10]]
    var dic:[Int:[[Int]]] = [:]
    var answer = [0,0,0,0]
    
    // 2.출발점, 도착점을 넣어준다
    for i in 0..<edges.count {
        dic[edges[i][0], default: [[],[]]][0].append(edges[i][1])
        dic[edges[i][1], default: [[],[]]][1].append(edges[i][0])
    }
    
    // 3. dictionary를 반복문을 통해 돌면서 갯수 확인하기
    for i in dic {
        
        // 출발점이 2개를 넘으면 막대모양이 2개인 팔자 모양 그래프가 됨,
        // EX) 11: [[1, 9], [4, 7, 10]],  3: [[5, 8], [8, 5]]
        // 팔자 모양 그래프 예시: 11,3의 출발점이 2번를 확인
        // 또한, 정점은 출발점은 많지만, 도착점이 하나도 없기 때문에 아래처럼 구현됨
        // EX) 4: [[11, 2, 8], []]
        
        // 결국 출발점이 2개 이상일 경우에, 도착점이 존재하면 팔자모양에 +1, 도착점이 존재하지 않다면 정점이 된다
        if i.value[0].count >= 2 {
            (i.value[1].count == 0) ?  (answer[0] = i.key) : (answer[3] += 1)
        }
        
        //만약 출발점이 존재하지 않다면 단방향 막대 모양 그래프가 됨
        if i.value[0].isEmpty || i.value[0].count == 0  {
            answer[2] += 1
        }
    }
 
    // 도넛 모양은 정점 노드의 출발선 갯수 - 막대 모양 그래프 갯수 - 팔자모양 갯수
    answer[1] = dic[answer[0]]![0].count - answer[2] - answer[3]
    
    return answer
}
//solution([[4, 11], [1, 12], [8, 3], [12, 7], [4, 2], [7, 11], [4, 8], [9, 6], [10, 11], [6, 10], [3, 5], [11, 1], [5, 3], [11, 9], [3, 8]])
//
