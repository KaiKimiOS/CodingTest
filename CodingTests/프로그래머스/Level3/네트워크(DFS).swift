//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 12/20/23.
//

import Foundation
//DFS 깊이 우선 탐색

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var computer:[[Int]] = computers
    var answer:Int = 0
    
    //컴퓨터 개수 n개 3대의 컴퓨터가 true,false인지 확인하기 위해서
    var visited:[Bool] = Array(repeating: false, count: n)
    
    
    for i in 0..<n {
        //해당 컴퓨터에 방문했는지 체크하고, false이면 dfs함수 호출, answer +1 해준다, true이면 다음 반복문 i 로 넘어간다
        if !visited[i] {
            dfs(now: i)
            answer += 1
        }
    }
        
    func dfs(now:Int) {
        
        //만약 방문했으면 바로 Return하기
        if visited[now] {
            return
        }
        //방문 안했으면 true로 변경하기
        visited[now] = true
        
        //computer 3개이면 1번부터 3번 computer안에 있는 값들을 다 돌아야한다;
        //[[1, 1, 0], [1, 1, 0], [0, 0, 1]]
        for i in 0..<computer.count{
            
            // [1, 1, 0] 한번씩 돌면서 실행해준다
            if computer[now][i] == 1 {
                
                //1인경우에만 더 깊이 또 있는지 찾기 위해 반복수행
                dfs(now: i)
            }
            
        }
    }
    
    print(answer)
    return answer
}

solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]])
