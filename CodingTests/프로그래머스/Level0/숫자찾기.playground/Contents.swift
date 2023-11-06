import Foundation


func solution(_ num:Int, _ k:Int) -> Int {
//
//    var result = Int()
//    for (i,j) in String(num).enumerated() {
//
//
//       if String(j) == String(k)
//        {
//            return i + 1
//       }
//            }
//
//
//
//return -1

  var result =   Array("_\(num)").firstIndex(of: Character(String(k))) ?? -1
//
    return result
                  }

solution(123456, 0)

solution(29183, 1)
solution(232443, 4)


//    var kai = String(num).map{Int(String($0))!} // string, string.element 뭐가달라
//
//    var result = Int()
//    for i in kai {
//
//        if kai.contains(k) && k == i {
//
//            result += 1
//
//            break
//
//        } else if kai.contains(k) &&  k != i {
//            result += 1
//
//            continue
//        } else {return -1}
//    }
//
