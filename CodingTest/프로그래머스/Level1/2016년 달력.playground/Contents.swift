import UIKit


// stride, reduce, array,날짜계산의 이해
func solution(_ a:Int, _ b:Int) -> String {
  let weekArray = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    //2016 1월 1일이 금요일이기 때문에, index 1을 "FRI"에 맞춰준다
    //1월 2일은 , index가 2인 "SAT"
    
    let monthDayArray = [31,29,31,30,31,30,31,31,30,31,30,31]
    //2016년은 윤년임. 각 월의 마지막날이 언제까지 있는지 확인한다
    //2월이 29일까지 있음을 확인
    var totalDay = b
    
    //방법1 - stride 활용하여 더하기
    for i in stride(from: 0, to: a-1, by: 1) {
        totalDay += monthDayArray[i]
    // 0부터 a-1전까지 monthDayArray를 다 더함
    //기존 b의 일수까지 더함도 잊지말기
    }
    
    //방법2 - reduce 고차함수 활용하여 더하기, 인덱스 설정 잘보기
    var kai = monthDayArray[0..<a-1].reduce(0, +)+b
    
    
    // 총 일수를 % 7 하면 weekArray[i]를 출력한다
    return weekArray[totalDay % 7]
    //return weekArray[kai % 7]
}

solution(12  , 31)

//다시 풀어보기


func solution1(_ a:Int, _ b:Int) -> String {
    var dayArray: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    
    var numberOfDays: [Int] = [31,29,31,30,31,30,31,31,30,31,30,31]
    
    
    return dayArray[(numberOfDays[0..<a-1].reduce(0,+)+b) % 7]
    
}

solution1(5, 24)
