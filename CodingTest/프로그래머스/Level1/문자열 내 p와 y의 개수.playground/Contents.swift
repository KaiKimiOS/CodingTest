import UIKit


func solution(_ s:String) -> Bool{
    

    
    var case1 = Array(s.lowercased())
  
    
    var count1 = Int()
    var count2 = Int()
    
    for i in case1 {
        
        if i == "p"{
            count1 += 1
        } else if i == "y" {
            count2 += 1
        } else { continue}
    }
   
    
    return count1 == count2 ? true : false
}


solution("pPooyY")



func solution1(_ s:String) -> Bool{
    

    
    var case1 = Array(s.lowercased())
  

   
    
    return case1.filter { $0 == "p"
    }.count == case1.filter{ $0 == "y"
    }.count
}

solution1("pPooyY")


func solution2(_ s:String) -> Bool{
    

   
    
    return s.lowercased().components(separatedBy: "p").count == s.lowercased().components(separatedBy: "y").count
}

solution2("pPooyY")
