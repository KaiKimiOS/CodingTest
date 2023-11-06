import UIKit

func solution(_ hp:Int) -> Int {
    
 


  
        var hp = hp
        var result = 0
    
        for i in [5, 3, 1] {
            result += hp / i
            print(result)
            hp %= i
            print(hp)
        }
        return result
    }


solution(23)
solution(24)
solution(999)



//var kai = Int()
//var kai1 = Int()
//var kai2 = Int()
//var kai3 = Int()
//
//guard hp != 0 else { return 0}
//kai1 += hp % 5
//kai +=  hp / 5
//
//print(kai1)
//kai += kai1 / 3
//kai2 += kai1 % 3
//
//print(kai1)
//kai += kai2 / 1
//kai3 += kai2 % 1
//
//return kai
