//
import UIKit

func solution(_ my_string:String, _ n:Int) -> String {

    var kai = String()
    
    for a in my_string {
        
        kai += repeatElement(a, count: n) // 새로운 함수 발견(반복하는 함수임
    }
   
    
   return kai
}


solution("kai", 4)


//
//for a in my_string {
//
//    for b in 1...n {
//        kai += String(b) 이렇게 b만 넣을수 있는 지알았어/ 하지만 a를 넣을수도 있다는 사실.
//    }
//}


func solution(_ my_string:String, _ n:Int) -> String {

    var kai = String()

    for a in my_string {

        for _ in 1...n {

            kai += String(a)

        }
    }


   return kai
}
