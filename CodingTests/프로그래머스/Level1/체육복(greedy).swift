//
//  main.swift
//  CodingTests
//  Created by kaikim on 2/22/24.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    //체육복 가지고 있는 사람이 Lost에도 존재가능하다 -> 1-1 = 0 개념처럼 쌤쌤되기 때문에 삭제해준다
    var lostSet:Set<Int> = Set(lost).subtracting(reserve)
    
    //순서가 중요하기때문에 똑같이 빼주고 다시 배열 및 정렬을 해준다. Set은 순서가 뒤죽박죽되어서 실패케이스가 생김.
    //가령 lost: [4,6], reserve:[3,5] 이라면 숫자 3은 4에게 빌려줄 수 있지만, Set으로 인해 [5,3]이 된다면 5가 4 빌려주고 6이 남게된다.
    var reserveArray = Array(Set(reserve).subtracting(lost)).sorted(by: <)

    
    for i in reserveArray {
        
        if lostSet.contains(i - 1) {
            lostSet.remove(i - 1)
            continue
        }
        //위의 if문이 실행되면, 아래 if문은 conitnue로 인하여 건너뜀.
        if lostSet.contains(i + 1) {
            lostSet.remove(i + 1)
        }
    }

    return (n - lostSet.count)
}

//⭐️배운점
//Set은 remove할때 내가 원하는 값을 직접 삭제가능(specific element)
//Array는 remove할때 원하는 값을 직접 삭제하는게 아닌, Index가 필요하다 (specific position)
