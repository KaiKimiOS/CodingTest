import UIKit


func solution(_ my_string:String) -> Int {
    
    var kai1 :[ Int] = [] // Int 빈배열을 만들어주기 . 숫자만을 담기위해서
    
    var kai = my_string.map{
        String($0) // my_string의 문자열을 하나씩 뽑아서 kai라는 변수에 담아주기, 이때 String($0)을 통해서 string.element가 아닌 String으로 담아주기
    }
    print(kai)
    
    for aaa in kai {
        if let bbb = Int(aaa) { // 가드문을 활용해서 만약 bbb에 Int(aaa) 변환한게 담기면
            
            kai1.append(bbb) // kai1 이라는 Int 배열에 추가하기
        } else {continue} //아니면 for 반복문 반복하기
        
        
    }
    
    var abcd = kai1.reduce(0) { $0 + $1
    } // reduce 고차함수를 이용해서 더해주기 이후 abcd에 할당하기
   
    return abcd
    
}
    
 solution("aAb1B2cC34oOp")
//my_string.filter{$0.isNumber}.map{Int(String($0))!}.reduce(0, +)

//isNumber = A Boolean value indicating whether this character represents a number. 숫자가 담겨 있는지 알려주는 프로퍼티
//isNumber 를 통해서 my_string 안에 number 유무를 확인가능함
