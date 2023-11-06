import UIKit
func solution(_ n:Int, _ m:Int) -> [Int] {
    
var result = [Int]()
var first = [Int]()
    
    for i in 1...n {
        
       if n % i == 0 && m % i == 0 {
           first.append(i)
        }
        
    }
    var result1 =  first.sorted(by: >).first!
    
   
    return [result1, (n * m) / result1]
}

solution(3, 12)

//최소공배수는 두수를 곱한다음 최대공약수로 나눠주면 나옴
//최소공배수는 두수를 곱한다음 최대공약수로 나눠주면 나옴
