import UIKit


func solution(_ n:Int) -> Int {

    guard n != 0 else { return 1 } // 1. 먼저 나눌수가 없는 소수 일 경우에는 1을 리턴한다
    
    
    var abc = (1...n).filter { n % $0 == 0}.count
    //  n 이라는 미지수를 filter를 통해서 1...n의 범위를 $0로 설정하고, 나머지가 0이기 때문에 약수를 말한다
    // 즉 1 부터 n 까지 숫자 중에서 나눠지는 약수를 abc에 담는다
    
    // 1,2,4,5,10,20,25,50,100 일 경우에 abc.count가 짝수 일경우에만 1 * 100이 성립하기에 홀수는 신경쓰지않는다
    
    
    print(abc)
 
    
    return abc
}


solution(100)


