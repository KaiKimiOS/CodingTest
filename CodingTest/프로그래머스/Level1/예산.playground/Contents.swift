import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    guard d.reduce(0, +) > budget else {return d.count}
    var count = 0
    var a1 = budget
    
    for i in d.sorted(by:<) {
        if a1 >= i {
          a1 =  a1 - i
            count += 1
        } else { continue }
        
    }
    

            

    
    
    
    
    
    
    return count
}

solution([1,1,1], 2)




func solution1(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget

    return d.sorted().filter{
        budget = budget - $0
        return budget >= 0
    }.count
}

solution1([1,1,1], 2)
