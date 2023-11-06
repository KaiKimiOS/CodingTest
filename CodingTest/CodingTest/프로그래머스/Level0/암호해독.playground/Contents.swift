import UIKit

func solution(_ cipher:String, _ code:Int) -> String {
    
    
//    cipher의 인덱스가 code의 배수이면 return
//    cipher 인덱스를 어떻게 접근하고? 그걸 code의 배수와 어떻게 일치하게 하는거지?
    
    /// code의 배수를 찾기
    /// cipher.count 만큼의 배수를 찾아야함
    /// 새로운 배열에 code의 배수 담아주기
    /// cipher 배열로 만들어주기
    /// code 배수 담아준거를 반복문으로 cipher[code] 할수 있게만들기
    /// 그리고 .join을 해서 담아주기
    var kai = cipher.count
//    answer[j] = cipher[i-1]
//    var kai1 = 0
    var kai2 = cipher.map { String($0)}
//    print(kai2[1])
    
    
    var kai3 = kai / code
    var kai4 = 0
    var kai5: [Int] = []
    var kai6: [String] = []
    for _ in 1...kai3 {
        
        kai5.append(kai4 + code)
        kai4 += code


    }
//    print(kai5)

    for i in kai5 {//배열을 넣어

//        kai2[i-1]
//        print(i)
        kai6.append(kai2[i-1])
//        print(kai6)




//        kai2.append(cipher[kai1])


    }
    
    
    var seahh =    (0..<cipher.count).filter { $0 % 2 == 1 }.map { String(Array(cipher)[$0])
    }.joined(separator: "")// 13579 1과 3 사이 에 넣거나 빼는게 가능
    
    cipher.count
    print(seahh)
    
   // { String(Array(cipher)[$0]) }.joined(separator: "") }
    return kai6.joined()
}




solution("0123456789", 2)

//(0..<cipher.count).filter { $0 % code == code - 1 }.map { String(Array(cipher)[$0]) }.joined(separator: "") }
