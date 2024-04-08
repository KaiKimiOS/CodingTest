import Foundation


func solution(_ friends:[String], _ gifts:[String]) -> Int {
    
    
    //giftDic dictionary 타입, Key는 각 friend, Value는 선물 준것[0]/ 받은것[1]
    // "muzi": [["frodo", "frodo"], ["ryan", "ryan", "ryan", "frodo", "neo"]]
    var giftsDic:[String:[[String]]] = [:]
    
    //선물 지수 구하는것, Key는 각 friend, Value는 지수를 나타냄
    var giftIndex:[String:Int] = [:]
    
    //정답 출력을 위한 answer
    var answer = 0
    
    
    // giftsDic에 key를 각 friend로 넣어주기 위한 반복문
    
    for friend in friends {
        giftsDic[friend, default: []] = [[],[]]
    }
    
    //giftDic에 value를 넣기 위한 반복문
    for gift in gifts {
        
        //공백을 기준으로 [0],[1] 구분됨
        var temp = gift.split(separator: " ").compactMap { String($0)  }
        
        //만약 ["muzi frodo"] 주어진다면
        //giftDic[muzi] += frodo 넣어줘야한다
        giftsDic[temp[0]]?[0].append(temp[1])
        //반대로 frodo는 선물을 받았기 때문에 giftDic[frodo] += muzi
        giftsDic[temp[1]]?[1].append(temp[0])
    }
    
    
    //선물 지수 구하기 위한 반복문
    for i in giftsDic {
        
        
        //["frodo", "frodo"] -  //["ryan", "ryan", "ryan", "frodo", "neo"]
        //두개를 빼준 값을 key/value 넣어준다
        giftIndex[i.key, default: 0] = i.value[0].count - i.value[1].count
        
    }
    
    
    // 핵심로직⭐️
    // 각 키값을 뽑아서 정답을 찾는 이중 반복문
    
    for (key,value) in giftsDic {
        
        //예시 - "muzi": [["frodo", "frodo"], ["ryan", "ryan", "ryan", "frodo", "neo"]]
        // muzi 가 받게될 임시 선물 정답 수
        var tempAnswer = 0
        
        
        //각 프렌즈를 반복문 돌린다 ["muzi", "ryan", "frodo", "neo"]
        for friend in friends {
            
            //key = muzi이며, friend가 frodo 라면
            
            //["frodo", "frodo"] -> 2
            var filter0 = value[0].filter { $0 == friend }.count
            //["ryan", "ryan", "ryan", "frodo", "neo"] -> 1
            var filter1 = value[1].filter { $0 == friend }.count
            
            // 2 < 1 이기에 tempAnswer += 1
            if filter0 > filter1 {
                tempAnswer += 1
            }
            
            // 두 사람이 선물을 주고받은 기록이 하나도 없거나
            // 주고받은 수가 같다면,
            // 선물 지수가 더 큰 사람이 선물 지수가 더 작은 사람에게 선물을 하나 받습니다.
            if (filter0 == 0 && filter1 == 0) || (filter0 == filter1 && key != friend) {
                
                if giftIndex[key]! > giftIndex[friend]! {
                    tempAnswer += 1
                }
            }

        }
        
        answer = max(answer, tempAnswer)
    }

    return answer
}

//solution(["muzi", "ryan", "frodo", "neo"], ["muzi frodo", "muzi frodo", "ryan muzi", "ryan muzi", "ryan muzi", "frodo muzi", "frodo ryan", "neo muzi"])

