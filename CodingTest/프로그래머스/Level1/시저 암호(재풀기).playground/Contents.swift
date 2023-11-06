import Foundation

func solution(_ s:String, _ n:Int) -> String {
    
    
    var lowalphabet = Array( "abcdefghijklmnopqrstuvwxyz")
    lowalphabet[2]
    lowalphabet[lowalphabet.firstIndex(of: "c")!]
    var upalphabet = Array( "abcdefghijklmnopqrstuvwxyz".uppercased())
    var result = ""
    for i in s {
        if i == " " {result += " "}
        else if lowalphabet.contains(i) {
            result += String(lowalphabet[(lowalphabet.firstIndex(of: i)! + n) % 26])
            print(result)
        }
        else if upalphabet.contains(i){
            result += String(upalphabet[(upalphabet.firstIndex(of: i)! + n) % 26])
        }
    }
    
    return result
}
solution("AB", 1)
