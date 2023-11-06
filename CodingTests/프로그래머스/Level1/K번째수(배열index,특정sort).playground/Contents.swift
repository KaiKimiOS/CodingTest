import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    //배열 [i] 활용 및 특정요소 sort
    var result = [Int]()
    var result123 = [Int]()
    for i in commands {
        
        var firstRange = i[0] - 1 //2  command[2,5,3]에서 2
        var secondRange = i[1] - 1 //5 command[2,5,3]에서 5
        var thirdRange = i[2] - 1 //3  command[2,5,3]에서 3
        
        var range = array[firstRange...secondRange].sorted(by: <) // array의 range 설정 후 정렬
        result.append(range[thirdRange]) //최종 result에 정답 넣기
        
        result123.append(array[i[0]-1...i[1]-1].sorted()[i[2]-1])// 이렇게 한번에 가능
    }
    
    return result123
}
solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])


//고차 함수 활용정답
func solution1(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({(key) in
        array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
    })

}
solution1([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])


//특정 뽑아서 sorted 할 수 있음
var exm : [Int] = [1,4,5,6,7,8]
exm[2]

exm.sorted()[2]

var kaikai : (Int, Int) = (5,6)

kaikai.0

var (vv,bb) = kaikai

vv
