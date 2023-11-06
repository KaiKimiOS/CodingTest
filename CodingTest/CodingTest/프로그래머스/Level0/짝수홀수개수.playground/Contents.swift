import UIKit

func solution(_ num_list:[Int]) -> [Int] {
    
    
    var kai =  num_list.filter { $0 % 2 == 0}
    
    var kai1 = num_list.filter{$0 % 2 != 0}
    
    var a1 =  kai.count
    
    var a2 = kai1.count
    
    var a3:[Int] = [a1,a2]
    
    return a3
}

solution([1,2,3,4,5,6])
//배열을 filter로  짝수, 홀수 나눠준 후에, 각자를 카운트하고, 이를 배열에 다시 담아서 리턴
