import UIKit


func solution(_ numbers:[Int]) -> Double {
    
    var aaa = 0
    for n in numbers {
        aaa += n
    }
    var a = numbers.count
    
    var abcc =  Double(aaa) / Double(a)
    
    let abc: Double  = Double(abcc)
    
    return abc
}

solution([1,2,3,4,5,6,7,8,9,10])
// 그냥 for 반복문으로 aaa 변수에 계속해서 담아준후에
// 이를 Double로 치환 -> return abc
