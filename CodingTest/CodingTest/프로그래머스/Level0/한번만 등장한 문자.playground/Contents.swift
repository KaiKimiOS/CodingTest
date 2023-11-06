import UIKit

func solution(_ s:String) -> String {
    var counter: [Character: Int] = [:]
    var case1 : [Character: Int] = [:]
    for char in s {
        counter[char] = (counter[char] ?? 0) + 1
    }
   var kai = counter.filter{ $0.value == 1
   }.keys.sorted(by: <).map { String($0)
   }.joined()
    print(kai)
    
    return counter.filter { $0.value == 1 }.keys.sorted().reduce("") { $0 + String($1) }
}


    
    
    


solution("hello")

//딕서녀러 [keys:values]








//MARK: - 아래 두개는 배열에 담기는 방법이다르다
// var kai1: [String] = [s]
//print(kai1)
//
//var kai = Array(s)
//print(kai)
