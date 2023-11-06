import UIKit

func solution(_ n:Int) -> [Int] {

    var case1 = n
    var result1 : Set<Int> = []
    for i in 2...n {

        while case1 % i == 0 {
            case1 /= i
            print(case1)
            result1.insert(i)

        }
    }

    Array(result1).sorted(by: <)
    return  Array(result1).sorted(by: <)
}

solution(24)


//for i in 2...n {
//
////        for j in 2...n{
//        if kai1 % i == 0 {
//
//            kai =  kai1 / i
//
//            kai1 = kai
//
//            result.append(i)
//
//        } else { continue}
//}
var kai = 100

var kai1 = Int()


