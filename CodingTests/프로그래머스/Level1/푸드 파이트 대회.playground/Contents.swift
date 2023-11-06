import Foundation

func solution(_ food:[Int]) -> String {
    
    
    var result: [String] = ["0"]
    
    for i in 1...food.count-1 {
        
        if food[i] % 2 == 0  {
            
            result.insert(String(repeating: String(i), count: food[i] / 2), at: result.index(i, offsetBy: -1))
            result.insert(String(repeating: String(i), count: food[i] / 2), at: result.index(i, offsetBy: +1))
            
            
            
        } else {
            
            result.insert(String(repeating: String(i), count: (food[i]-1) / 2), at: result.index(i, offsetBy: -1))
            result.insert(String(repeating: String(i), count: (food[i]-1) / 2), at: result.index(i, offsetBy: +1))
        }
        
        
        
    }
    result.joined()
    
    return  result.joined()
}

solution([1, 7, 1, 2])


func solution1(_ food:[Int]) -> String {
    var result = ""
    for i in food.indices {
 
        result += String(repeating: String(i), count: food[i] / 2)
        
    // 0 또는 1일 경우 count가 안되기 때문에 건너뜀 대박....
   
    }
    return result + "0" + result.reversed()
}

solution1([1, 1, 1, 2])


var abc = ["0"]



String(repeating: <#T##String#>, count: <#T##Int#>)
