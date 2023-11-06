import UIKit
func solution(_ slice:Int, _ n:Int) -> Int {
    
    var pizzaNumber = 0
    var aaa = slice
    var bbb = n
    if bbb % aaa == 0 {
        var abc = bbb / aaa
        pizzaNumber += abc
    } else if bbb % aaa != 0 {
        var abc = bbb / aaa
        pizzaNumber = abc
        pizzaNumber += 1
    }
    
    return pizzaNumber
}
solution(4  , 12)
//12명이 4조각으로 자른 피자를 한 조각 이상씩 먹으려면 최소 3판을 시켜야 합니다.
// 12명 4조각으로 나누면 딱 맞아 떨어져서 3판

//10명이 7조각으로 자른 피자를 한 조각 이상씩 먹으려면 최소 2판을 시켜야 합니다.

// 10명 7 조각으로 나누면 안나눠 떨어지니까 2판

//피자나눠먹기1 첫번째 문제와 유사하게 생각하면됨
