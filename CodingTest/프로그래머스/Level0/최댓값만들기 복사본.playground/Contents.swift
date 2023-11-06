import UIKit

func solution(_ numbers:[Int]) -> Int {
    
   var kai =  numbers.sorted(by: >) //정렬하고
var result =
    kai[0] * kai[1] // 맨 위에 있는 두개 제일 큰수 2개를 곱한다
   
    
  
    var a1 = kai.endIndex - 1 // 라스트 인덱스 -1 해도 마지막 -8이 됨
    var a2 = kai.endIndex - 2 // 그러니까 라스트 인덱스 -2 해서 -5를 하기

    //근데 왜 라스트인덱스를 찾으면 index out of range가 뜰까? 이유는 대충할겠어
    kai[a2]
    kai[a1]

    var result1 = kai[a1] * kai[a2] // 라스트 인덱스에 맞는 kai 배열의 값을 찾아서 곱하자
    print(result1)

    return result > result1 ? result : result1
    
}

solution([1, 2, -3, 4, -5, -8, 16])
