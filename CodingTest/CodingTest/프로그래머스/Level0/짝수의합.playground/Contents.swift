import UIKit
//
//
//func solution(_ n:Int) -> Int {
//    var kai: Int
//
//    var nnn =  n % 2 == 0
//
//
//
//
//    print(nnn)
//
//    //n.filter{ $0 % 2 == 0}.reduce(0){ (num1,num2) in
//                                             // return num1 + num2}
//    return kai
//}


func solution(_ n:Int) -> Int {
    var b  = 0
    
    for number in 1...n {
        if number % 2 == 0 {
            b += number
        } else {continue}
    }
    return b
}

solution(14)
//그냥 1부터 n숫자까지 반복을 돌려서 짝수를 구하고, 그걸 더해주면 되는 문제였음
//내가 너무 어렵게 생각함


//14을 나눈 값을 배열에 넣고, 그걸 고차함수 filter 통해서 나누고, reduce로 하는줄?
let kai:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]

var abc = kai.filter { $0 % 2 == 0
}.reduce(0) { $0 + $1
}
print(abc)

