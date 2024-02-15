//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/15/24.
//

import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    
    var tempArray : [Int : [Int]] = [ : ]
    var visited:[Bool] = Array(repeating: false, count: n+1)
    var result = Int.max

    //딕셔너리 1,2,3,4,5 만들어주기
    for i in 1...n{
        tempArray.updateValue([], forKey: i)
    }
    
    // 1,2,3,4,5 각 숫자에 뭐가 있는지 넣어주기
    for wire in wires {
        
        tempArray[wire[0]]?.append(wire[1])
        tempArray[wire[1]]?.append(wire[0])
    }
    
    func bfs(start:Int) -> Int {
        //집어 넣을 큐를 만든다
        var que:[Int] = []
        var count = 0
        //큐에 넣는다
        que.append(start)
        //넣은 값은 true
        visited[start] = true
        
        while !que.isEmpty {
            let now = que.removeFirst()
            //큐의 첫번째를 뽑는다
            count += 1
            
            for i in tempArray[now]! {
                //tempArray now 번째에 접근해서 있는 숫자를 다 큐에 넣어준다
                if visited[i] == false {
                    que.append(i)
                    //이미 다 큐에 들어갔기 때문에, true로 해준다
                    visited[i] = true
                }
            }
        }
        return count
    }
    
    
    //한 개의 노드씩 방문처리를 하면 한 개의 엣지를 끊은것과 동일한 효과가 난다고 한다.. 처음알았습니다. 배워갑니다.
    for i in 1...n {
        visited = Array(repeating: false, count: n + 1)
        visited[i] = true
        let count = bfs(start: 1)
        //abs(count - (n - count))) 하는 이유는 전선 끊었을때 나오는 두 송신탑, 두 송신탑 A와 B를 뺐을 때 가장 작은 값이 닶이기 때문에.
        //즉 [count - count가 아닌 나머지]를 빼는 것이다.
        //abs 의 절대값을 사용한 이유 -> 입출력 1번에서 [4,5]를 끊으면 count = 1, 나머지는 8이 되기 때문에, [1 - (n-1) = -7] 을 절대값 해주기 위해서이다
        result = min(result, abs(count - (n - count)))
    }
    
    print(result)
    return result
}

//solution(4, [[1,2],[2,3],[3,4]])

//https://clamp-coding.tistory.com/206
//https://borabong.tistory.com/29
