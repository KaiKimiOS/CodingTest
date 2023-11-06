import UIKit



func solution(_ rsp:String) -> String {
//
//       var kai = rsp.map { Int(String($0))!}
//        print(kai)
//        var result: [Int] = []
//
//        for i in kai {
//            if i == 2 {
//                result.append(0)
//
//            } else if i == 0 {
//                result.append(5)
//            } else if i == 5{
//                result.append(2)
//            }
//        }
//
//
//       var result1 = result.map { String($0)
//        }.joined()
//
    
   var kai =  rsp.map{$0 == "0" ? "5" : $0 == "2" ? "0" : "2"}
//
//        return result1
    return rsp.map{$0 == "0" ? "5" : $0 == "2" ? "0" : "2"}
    
    //삼항연산자 안에 삼항연산자를 넣을수 있다// 신기하네?
    //1.$0 == "0" ? "5" :
    // $0 과 "0"이 같다면 "5"
    //아니라면 뒤의 구문이 $0 == "2" ? "0" : "2" 다시 삼항연산자로
   // 같지 않다면 다시 $0 == "2" 같은지 보고 "0" , 아니면 "2"를 리턴
    // 그리고 마지막 다 더해주는 joined()
    
}



solution("2")
solution("205")

return rsp.map{$0 == "0" ? "5" : $0 == "2" ? "0" : "2"}.joined()
