import UIKit


func solution(_ age:Int) -> String {
    
    var num  = String(age) //문자열로 변환
    var numA = num.map { Int(String($0))!
    } // 하나씩 인트로 되게 한 다음 배열에 넣어주기
    
    var kai = "abcdefghij"
    var kai1 =  kai.map { String($0)
    } // 각 알파벳 하나씩 뽑아주기
    var result = String() //결과값담기
    
    for i in numA {
        // numA에 있는 숫자 즉 age를 kai1[i] 로 담아주기
        result +=  kai1[i]
    }
    var result1 = num.map { kai1[Int(String($0))!]}
    // num인 5,0 을 맵핑하고 kai1[5], kai1[0] 을 궁극적으로 맵핑 후 뽑아냄
    print(result1)
    
    result1.joined()
    return "Dd"
    
}

solution(50)
