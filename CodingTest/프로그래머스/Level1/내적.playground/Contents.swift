import UIKit

func solution(_ a:[Int], _ b:[Int]) -> Int {

    var result = Int()
    
    for i in 0...a.count - 1  {
        
      result +=  a[i] * b[i]
    }
    
    return result
}

solution([1,2,3,4], [-3,-1,0,2])



func solution1 (_ a:[Int], _ b:[Int]) -> Int {

    zip(a, b)
    
    return 123
}

solution1([1,2,3,4], [-3,-1,0,2])


func solution11(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a, b).reduce(0){ $0 + ($1.0 * $1.1) }
    
    
    //reduce 0이 $0 $1이 a,b에 들어있는 숫자를 의미한다. 그래서 $1.0 * $1.1을 곱하는 거구나
}
    solution11([1,2,3,4], [-3,-1,0,2])
