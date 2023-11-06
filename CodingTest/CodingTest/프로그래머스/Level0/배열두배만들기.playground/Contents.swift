import UIKit

func solution(_ numbers:[Int]) -> [Int] {
    
    var a:[Int] = []
    
    for i in numbers {
       var b = i * 2
        a.append(b)
       continue
    }
    return a
}
solution([6,7,78,7,3,5,6,7,7,77,192])
solution([5,6])
//어떻게 풀었는지 아직 얼떨하지만, 풀긴 풀어서 행복...
//우선 그냥 곱하기 2 하면 되는 간단한 문제풀이이지만, 배열이라는 함정이 있다
//결국에 배열을 어떻게 이용해서 *2를 해줄 것인지가 Key Point!
//우선 배열*2 해준 값을 담기 위한 새로운 배열이 필요해서 a를 빈 배열로 만들었다
//그다음에 for 반복문을 활용해서 범위가 몇개가 나올지 모르니, 주어진 numbers만큼
// for 반복문의 i에 투입되게끔 만들면서, i*2를 하고 이를 var b에 담아준다.
//그리고 여기서 핵심은 var b는 Int이기 때문에, 어떻게 다시 배열[Int]에 리턴하지? 였다.
//그래서 찾아본 결과--> 배열에 "요소"를 추가 할 수 있는 함수가 있다. array.append(요소)
//이걸 활용해서 빈배열로 선언한 a에 담아주고 continue를 통해 계속해서 새로운 요소를 담아주면서 문제해결!

