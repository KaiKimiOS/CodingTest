import UIKit

func solution(_ strlist:[String]) -> [Int] {
    
    let kai = strlist.map {
        $0.count
    }
    return kai
}

solution(["we","are","dd"])

//map 고차함수를 활요하여 카운트 한걸 하나하나씩 kai 에 넣어주며 리턴함
