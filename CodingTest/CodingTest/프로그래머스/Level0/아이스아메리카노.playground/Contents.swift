import UIKit

func solution(_ money:Int) -> [Int] {
   
    var coffeeCost = 5500
    var coffeCount = money / 5500
    var coffeTotalMoney = coffeCount * coffeeCost
    var restMoney = money - coffeTotalMoney
    
    
    return [coffeCount, restMoney]
}

solution(15000)
