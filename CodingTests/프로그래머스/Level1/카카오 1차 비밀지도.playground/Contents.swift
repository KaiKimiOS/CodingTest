import Foundation




func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var result = [String]()
    
    for i in 0..<n {
        
        var kai1 = (String(arr1[i] | arr2[i], radix: 2))
        var a1 = String()
        for j in kai1 {
            
            if j == "1" {
                a1 += "#"
            } else {a1 += " "}
        }
        
        if a1.count != n {
            while a1.count < n { a1.insert(" ", at: a1.startIndex) }
            
            result.append(a1)
            
        } else { result.append(a1)}
        
    }
    
    return result
}

solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])



func solution1(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    
    
    return (0..<n).map {
        
        let bbb = String(arr1[$0]|arr2[$0], radix: 2)
        let ppp = String(repeating: "0", count: n - bbb.count) + bbb
        
        print(ppp)
        return ppp.reduce("") { $0 + ($1 == "0" ? " " : "#")
        }
        
        
        
    }
}
solution1(5, [9, 2, 28, 18, 11], [3, 1, 21, 17, 28])
