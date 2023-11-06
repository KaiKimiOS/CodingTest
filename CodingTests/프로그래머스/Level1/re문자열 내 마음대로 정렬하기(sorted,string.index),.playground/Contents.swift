import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {

    //다시풀기
    /* 1. sun의 "u"에 접근하고 싶다
     2. 인덱스를 활용한다
     3. strings[0]은 sun, strings[1]은 bed
     4. string[0] 이건 배열 접근
     5. string[0] index 접근해야함
     6. string[0].index(string[0].startIndex)  - sun 에서 s 에 접근
     7. 만약 u 에 접근하고싶다면 string[0].index(string[0].startIndex, offsetBy:1)
     8. 여기서부터 핵심임. 먼저 변수에 담아줌 var a =  string[0].index(string[0].startIndex, offsetBy:1)
     9. 이때 a  타입은 Sring.index임, 하지만 나는 "u" 라는 a : Character 타입으로 값을 원함
     10. 제일 핵심 var b = string[0][a] 설정해줘야함
     
    */
   
    //문자열 String.index를 활용해서 비교하려 했찌만... 너무 어렵다 실패
    //어쨌든 String.index 관련 자료를 많이 봐서 괜춘...
    var index1 = strings[1].index(strings[1].startIndex, offsetBy: n)
    // string[1] 이든, string[0] 이든 노상관임. 왜?
    // 아래 sorting1에서 $0이 어차피 string[0], string[1]일테니까? 아마도
  
  
    //let a112 = strings.sorted { $0 < $1
    //}
    
    let sorting1 = strings.sorted { if $0[index1] == $1[index1] { return $0 < $1}
        else {return $0[index1] < $1[index1]}
    }

    
Array(strings[0])[1] > Array(strings[1])[1]

        return sorting1
  


  
}

solution(["abae", "abbd", "abcf"], 2)
//
//배열로 바꾸고 sorted 하면 너무 편해....하 ~.~
//func solution(_ strings:[String], _ n:Int) -> [String] {
//    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
//}
//

