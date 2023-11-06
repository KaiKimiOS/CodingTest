import UIKit

func solution(_ str1:String, _ str2:String) -> Int {
    
    // 문제 자체가 포함 하면 1 아니면 2
    // True or False로 1 또는 2를 리턴하는 것임
    // 그러니까 값을 구할 필요가 없다
    

    
    var kai = Array(str1)
    var kai2 = str2
   var kai3 =  kai.contains(kai2)
    
    
    
    
    print(kai3)
    
//    나는 str1.contains(str2) ?  1 : 2 여기서
//
//    str1.filter { $0 .contains(str2) 이런 방식으로 해서
//        개별이 담기게 해서 해결이 안됨
    
    //어떻게 A는 str1, str2 똑같이 3개가 들어있는데
    // "AAA" 그 자체 만을 비교할 수 있을까?
//   // solution("AbcAbcA", "AAA")
    
    
    //return str1.contains(str2) ?  1 : 2
    return kai.contains(kai2) ? 1 : 2
   }



solution("ab6CDE443fgh22iJKlmn1o", "6CD")

solution("ppprrrogrammers", "pppp")
solution("AbcAbcA", "AbC")

//
//var kai = Array(str1)
//var kai2 = str2
//var kai3 = Int()
//
//var kai4 = kai.filter { kai2.contains($0)
//    }
//        print(String(kai4))
//        if str2 == String(kai4) {
//            kai3 = 1
//        } else { kai3 = 2 }
//
//        return kai3
//
//
//
//
//}
