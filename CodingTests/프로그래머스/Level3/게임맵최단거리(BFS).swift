//
//  main.swift
//  CodingTests
//
//  Created by kaikim on 2023/12/08.
//

import Foundation

//var array = [[1,1],[2,3], [2,4], [5,2], [5,1]]
//var number = 5
//var arrayList: [[Int]] = Array(repeating:[], count: number + 1)
//
//
//for i in array {
//    arrayList[i[0]].append(i[1])
//}
//
//
//print(arrayList[1])
//for i in arrayList[2] {
//    print(i)
//}

func solution(maps: [[Int]]) -> Int{
    //   열 열 열 열 열 = 열 갯수 5
    // 줄 0 0 0 0 0
    // 줄 0 0 0 0 0
    // 줄 0 0 0 0 0
    // 줄 0 0 0 0 0
    // 줄 0 0 0 0 0
    // 줄 갯수 = 5
    
    let N = maps.count // 줄 갯수
    let M = maps[0].count // 열 갯수
    
    //비어있는 큐 ([x,y]좌표로 넣어줘야함)
    var que:[[Int]] = Array()
    
    //방문 배열 (입력값과 똑같이 만들어주기 위해 2차원 배열)
    var visited = Array(repeating: Array(repeating: false, count: M), count: N)
    //    [[1,0,1,1,1],
    //     [1,0,1,0,1],
    //     [1,0,1,1,1],
    //     [1,1,1,0,1],
    //     [0,0,0,0,1]]
    
    //최단거리 배열 (입력값과 똑같이 만들어주기 위해 2차원 배열)
    var distance = Array(repeating: Array(repeating: 0, count: M), count: N)
    //    [[1,0,1,1,1],
    //     [1,0,1,0,1],
    //     [1,0,1,1,1],
    //     [1,1,1,0,1],
    //     [0,0,0,0,1]]
    
    //시작 정점[0,0] 큐에 넣기
    que.append([0,0])
    
    //넣자마자 방문햇음을 저장
    visited[0][0] = true
    
    //최단거리에 +1 해주기, 문제에서 시작부터 +1 하기 때문에 그래서 11임
    distance[0][0] = 1
    
    //상하좌우 체크하기
    let rx: [Int] = [0,0,1,-1]
    let ry: [Int] = [1,-1,0,0]
    
    while !que.isEmpty {
        let now = que.removeFirst()
        let r = now[0] // 시작은 0
        let c = now[1] // 시작은 0
        
        for i in 0..<4 {
            let nr = r + rx[i]
            let nc = c + ry[i]
            
            
            //상하좌우 범위 체크
            if nr < 0 || nc < 0 || nr >= N || nc >= M {
                continue
            }
            
            //벽 체크
            if maps[nr][nc] == 0 {
                continue
            }
            
            //방문한 곳 중복체크
            if !visited[nr][nc] {
                visited[nr][nc] = true
                que.append([nr,nc]) //해당되는 좌표 (x,y) 큐에 넣어주기
                distance[nr][nc] = distance[r][c] + 1 // 처음 distance[r][c] = 1 임
            }
        }
    }
    // 결과 값 출력1
    for i in distance {
        print(i)
    }
    // 결과 값 출력2
    print(distance[N-1][M-1])
    
    return distance[N-1][M-1] == 0 ? -1 : distance[N-1][M-1]
}

solution(maps:
            [
                [1,0,1,1,1],
                [1,0,1,0,1],
                [1,0,1,1,1],
                [1,1,1,0,1],
                [0,0,0,0,1]
            ])
