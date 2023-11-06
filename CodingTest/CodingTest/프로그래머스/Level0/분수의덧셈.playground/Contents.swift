import UIKit
import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    
    var a = denum1 * num2 + denum2 * num1
    var b = num1 * num2
    var c = 1
    var d = 2
    
    while d <= min(a,b) {
        if a % d == 0 && b % d == 0 {
            c = d
        }
        d += 1
    }
    var result1: Int =  a / c
    var result2: Int = b / c
    
    return [result1, result2]
}

    
solution(3, 4, 5, 6)

//필터활용
//let gcd = (1...min(a, b)).filter { a % $0 == 0 && b % $0 == 0 }.max()!


func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [
 Int] {
    var a = numer1 * denom2 + numer2 * denom1 //numer1
    var b = denom1 * denom2
    
    for i in stride(from: b, through: 1, by: -1) {
        
        if a % i == 0 && b % i == 0{
            a /= i
            b /= i
                    
            
            continue
        } else {continue}
        }
        
    return [a,b]
    
}

