import UIKit

func solution(_ numbers:[Int]) -> Int {

    // numbers.sort(by:>) let 오류로 안됨
    
var kai = numbers // 그래서 새로운 변수를 선언하고 담아줌
    
    kai.sort(by: >) // 높게 분류함
    
var kai1 = kai // 이걸 다시 담아줌
var kai2 = kai1[0] * kai[1] // 배열 0, 1 제일 큰거만 곱하기 실행
    
  
    return kai2 // 리턴하기
}


solution([5,3,6,7,8])
