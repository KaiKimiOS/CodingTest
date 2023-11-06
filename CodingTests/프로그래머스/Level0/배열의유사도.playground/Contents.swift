import UIKit

func solution(_ s1:[String], _ s2:[String]) -> Int {

    var kai: [String] =  []
   var abc = String()
    var kai1 =  0
    kai = s1 + s2 //먼저 s1 , s2 를 하나의 배열로 합쳐준다
    kai.sort()// 순서를 정렬하여 같은게 겹치게 한다

    //가장 중요한 것은 반복문을 돌릴때 첫번째 값, 두번째 값을 비교하기 위해서 어떻게 담아주는지가 관건
    // abc 라는 빈 문자열을 선언한다

    for aa in kai{


        if abc == aa { // 빈 문자열이 aa의 값과 값다면?

            kai1 += 1 // count + 1 해준다
            abc = aa // 그리고 빈 abc에 aa 를 할당한다
        } else { abc = aa} // 빈 문자열이 aa와 같지 않아도 abc에 aa 를 할당하기

    }
    return kai1
    
}

solution(["a", "b", "c"], ["com", "b", "d", "p", "c"])


//return s1.filter{s2.contains($0)}.count //이렇게도 가능하구나..
//
////set으로 변형 후에 교집합 구하기
//var aaa = Set(s1)
//  var bbb = Set(s2)
//
//  return aaa.intersection(bbb).count /
