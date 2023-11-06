import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var a1 = [Int]()
    var a2 = [Int]()
    var result = Int()
   
    for i in sizes {
        
        if i[0] < i[1] {
            i.reversed()
            
            a1.append(i.reversed()[0])
            a2.append(i.reversed()[1])
        } else {
            a1.append(i[0])
            a2.append(i[1])
        }
    }
    var var1 = a1.max()!
    var var2 = a2.max()!
    result = var1 * var2
    
    
    return result
}



solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]])


func solution1(_ sizes:[[Int]]) -> Int {
    var maxNum = 0
    var minNum = 0

    for size in sizes {
     
        maxNum = max(maxNum, size.max()!)
        //기본0. = 0 과 [10,7] 비교해서 큰값 10을 넣음
        //기본10 = 10 과 [12,3] 비교해서 큰값인 12를 넣음
        minNum = max(minNum, size.min()!)
        //기본0  = 0과 [10,7] 비교해서 큰값 값 7을 넣음
        //기본7  = 7과 [12,3] 비교해서 [12,3] 중에 작은 값 3 과 7에서 큰값 넣음
       
    }
    return maxNum * minNum
}


solution1([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]])
