import UIKit

func solution(_ n:Int) -> Int {
    
    var pizzaNumber : Int = 0
    var pizza: Int = 7
    
    if n > 7 && n % pizza == 0{
        var abc = n / pizza
        
        pizzaNumber += abc }
        
    else if n > 7 && n % pizza != 0 {
        var abc =  n / pizza
        pizzaNumber = abc
        pizzaNumber += 1
    } else { return 1 }
        
        return pizzaNumber
    }

solution(99)

//딱 떨어졌을때도 무조건 Pizzanumber를 +1 해서틀렸음
// 14/7 이 2여야하는데 3이여서 틀림
// 그래서 2가지로 나눔
// 딱 떨어지면 바로 그 넘버 그대로
// 딱 안떨어지면 pizzanumber +1
    

