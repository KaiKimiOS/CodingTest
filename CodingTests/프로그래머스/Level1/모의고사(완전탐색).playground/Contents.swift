import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var student1: [Int] = [1,2,3,4,5]
    var student2: [Int] = [2,1,2,3,2,4,2,5]
    var student3: [Int] = [3,3,1,1,2,2,4,4,5,5]
    
    var studentCount:[Int] = [0,0,0]
    
    
    var result: [Int] = []
    
    
    
    
    for i in 0..<answers.count{
        
        
        if answers[i] == student1[i % 5] { //  student1 배열 반복을 위해서 [i % 5]
            
            studentCount[0] += 1
            
            if answers[i] == student2[i % 8] { //첫번째 if 문이 가장 힘들었다
                
                studentCount[1] += 1  // 만약 student1과 같으면 student2와도 같은지 봐야함
                
                if answers[i] == student3[i % 10] { //만약 student2와 같으면 student 3과 같은지 봐야함
                    
                    studentCount[2] += 1 }
                
            } else if answers[i] == student3[i % 10] { // 만약 student2와는 같지 않지만 student 3과 같은지 봐야함
                
                studentCount[2] += 1 }
            
            
        } else if answers[i] == student2[i % 8] {
            studentCount[1] += 1
            
            if answers[i] == student3[i % 10] {
                studentCount[2] += 1 }
            
        } else if answers[i] == student3[i % 10] {
            
            studentCount[2] += 1
            
        }}
    
    
    for i in 0..<studentCount.count {
        
        // 이거 고민하느라 꽤 힘듬. 각 카운트 올라간게 서로 중복되면 같이 출력해야해서..
        if  studentCount.sorted(by: >)[0] == studentCount[i] {
            result += [i+1]
            //[0,0,0]에서 가장 카운트 높은 순서대로 나열 후에 [0]인 가장 첫번째만 sort함
            //그리고 각 studentCount[i] 의 숫자가 가장 높은 수와 같으면
            // result 새로운 배열에 [i+1]
        }
    }
    
    return result
    
    //생각보다 쉽다 생각했는데 중간중간 생각할게 너무 많았다
    //아직 알고리즘 공부를 시작하지 않았어서 그런지... 완전탐색 쉽게 봤다가 몇시간 잡아먹음 ㅠㅠ...
    //고수들은 역시 쉽게 푼다..하
}

solution([1,3,5,5,5,5,5,5,5,5,5])

func solution1(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1, 2, 3, 4, 5], // index % 5
        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
    )
    var point = [1:0, 2:0, 3:0]

    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}

solution1([1,3,5,5,5,5,5,5,5,5,5])


func solution3(_ answers:[Int]) -> [Int] {
    
    var student1: [Int] = [1,2,3,4,5]
    var student2: [Int] = [2,1,2,3,2,4,2,5]
    var student3: [Int] = [3,3,1,1,2,2,4,4,5,5]
    
    var studentCount:[Int] = [0,0,0]
    
    
    var result: [Int] = []
    
    for i in 0..<answers.count{
        // if else 를 안해도 됨을 알게되어 버렸다...하 ~.~ 정말 바보
        if answers[i] == student1[i % 5] { studentCount[0] += 1}
        if answers[i] == student2[i % 8] { studentCount[1] += 1}
        if answers[i] == student3[i % 10]{ studentCount[2] += 1}
        
    }
    
    for i in 0..<studentCount.count {
        
        if studentCount.sorted(by: >)[0] == studentCount[i] {
            result += [i+1] }
        
    }
    return result
    
}
   
solution3([1,3,5,5,5,5,5,5,5,5,5])

//맨 상단에 있는 깔끔한 코드보다 최대시간이 짧게 나온걸 만족하며 넘어가겠다..
