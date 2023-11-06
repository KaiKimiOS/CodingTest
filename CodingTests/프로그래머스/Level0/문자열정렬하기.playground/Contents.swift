import UIKit


func solution(_ my_string:String) -> [Int] {
   
    var kai: [String] = []
    for i in  my_string {
        
        if i.isNumber  {
            kai.append(String(i))
        }
    }
    print(kai)
    
    var result = kai.map { Int($0)!
    }.sorted(by: <)
    print(result)
    
    return result
}

solution("hi12392")

my_string.filter { $0.isNumber}
    .map { Int(String($0))!
    }.sorted(by: <)
