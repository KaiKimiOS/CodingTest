import Foundation
func solution(_ n:Int) -> Int {
    
    
    var pizzaNumber = 1
    while (pizzaNumber  * 6) % n != 0 {
        
        pizzaNumber += 1
    }
return pizzaNumber
}


//10명이 모두 같은 양을 먹기 위해 최소 5판을 시켜야 피자가 30조각으로 모두 세 조각씩 먹을 수 있습니다.

//10명과 한판에 6조각인 피자 , 즉 10 과 6의 최소공배수인 30을 구하는 문제임

// pizzaNunmber * 6을 통해서 계속 10으로 나눠서 %나머지가 0이 될때까지
// while 문을 통해서 구하고 pizzanumber 수를 +1 씩 해주면서 찾는 문제이다

// 식세우는게 어려웠음
