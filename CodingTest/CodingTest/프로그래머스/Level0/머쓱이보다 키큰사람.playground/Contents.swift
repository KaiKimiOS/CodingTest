import UIKit

func solution(_ array:[Int], _ height:Int) -> Int {

    var kai = array.filter { $0 > height}
    
    var kai1 = kai.count
    





    return kai1
}


solution([4,5,6,7,8,9], 3)
//먼저 array를 고차함수 filter를 통해서 height보다 큰거만 담는다,

// kai를 count해서 다시 새로운 변수에 담고 리턴하기
