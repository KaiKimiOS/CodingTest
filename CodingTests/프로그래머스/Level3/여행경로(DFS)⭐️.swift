//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2/21/24.
//

import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    
    // 도착지 알파벳 순으로 정렬해주기
    var initialTickets = tickets.sorted{ $0[1] < $1[1] }
    // 방문한곳 체크해주기
    var visited:[Bool] = Array(repeating: false, count: tickets.count)
    // 결과값 담는 배열
    var result:[String] = []
    
    func dfs(start:String) {
        
        // [["ICN", "JFK"], ["HND", "IAD"], ["JFK", "HND"]] 총 4군데 ["ICN", "JFK", "HND", "IAD"], 즉 n + 1 만큼의 결과값이 나와야한다
        // 만약 result가 이미 4라면 그냥 start만 넣어주고 끝나면 끝이난다
        if result.count == tickets.count {
            result.append(start)
            return
        }
        
        // ⭐️핵심로직
        
        for i in 0..<initialTickets.count {
            //반복문을 통해서 start와 같으며 ,방문하지 않는곳이라면 If문 실행
            if initialTickets[i][0] == start && !visited[i] {
                //방문했다는 처리 해주기
                visited[i] = true
                //result에 넣어주기
                result.append(start)
                //다음 목적지의 이름을 넣어주며 위의 dfs를 반복 실행한다.
                dfs(start: initialTickets[i][1])
                // 다 돌고 n+1 만큼의 결과값이 나왔다면 리턴하기
                if result.count == tickets.count + 1 {
                    return
                }
                // 결과값이 다 나오지 못했다면, 다음 for i ++ 값을 위해서 result 삭제 및 visited[i] = False로 바꿔주기
                result.removeLast()
                visited[i] = false
            }
        }
        
    }
    
    dfs(start: "ICN")
    
    return result
}
