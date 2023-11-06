import UIKit

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {

   var kai = Array( numbers[num1...num2])
//전체를 Array로 감싸주면 됨
  //Array로 감싸기 전에는  Array<Int>.SubSequence  -> [Int] 로 감싸줌
    return kai
}

solution([1,2,3,4,5], 1, 3)

