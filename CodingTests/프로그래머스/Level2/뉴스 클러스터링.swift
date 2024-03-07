import Foundation
func solution(_ str1:String, _ str2:String) -> Int {
    
    //소문자 통일해주기
    let lowerCasedStr1 = str1.lowercased().map { $0  }
    let lowerCasedStr2 = str2.lowercased().map { $0  }
    
    //Mapping 해서 Array 넣어주기
    var str1Array:[String] = []
    var str2Array:[String] = []
    
    //unionInt - 분모, intersection - 분자
    var unionInt:Double = 0
    var interSectionInt:Double = 0
    
    var result:Double {
       return (interSectionInt / unionInt) * 65536
    }
    
    // 2개씩 넣어주기, 제외되는 값 guard 로 걸러주기
    for i in 0..<lowerCasedStr1.count {
        if i != lowerCasedStr1.count - 1 {
            guard lowerCasedStr1[i].isLetter else {continue}
            guard lowerCasedStr1[i+1].isLetter else {continue}
            str1Array.append("\(lowerCasedStr1[i])" + "\(lowerCasedStr1[i+1])")
        }
    }
    
     // 2개씩 넣어주기, 제외되는 값 guard 로 걸러주기
    for i in 0..<lowerCasedStr2.count {
        if i != lowerCasedStr2.count - 1 {
            guard lowerCasedStr2[i].isLetter else {continue}
            guard lowerCasedStr2[i+1].isLetter else {continue}
            str2Array.append("\(lowerCasedStr2[i])" + "\(lowerCasedStr2[i+1])")
        }
    }
    
    // E=M*C^2 경우에는 바로 리턴해주기
    guard !str1Array.isEmpty || !str2Array.isEmpty else {return 65536}
    
    //⭐️핵심로직, 배열에서 하나씩 빼서 같은게 있다면 제거해주기 -> intersection += 1
    for i in str2Array {
        if str1Array.contains(i) {
            let index = str1Array.firstIndex(of: i)
            str1Array.remove(at: index!)
            interSectionInt += 1.0
        }
    }
    //unionInt -> 모든 총합은 결국 중복이 제거된 count 숫자
    unionInt = Double(str1Array.count + str2Array.count)

    return Int(result)
}
//예외 케이스
//solution("aaabbcccccccc", "aaaabbcccc") -> 40329
