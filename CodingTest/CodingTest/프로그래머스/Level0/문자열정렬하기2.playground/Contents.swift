import Foundation

func solution(_ my_string:String) -> String {
    
    
    var kai = my_string.map{$0.lowercased()}.sorted(by: <).joined()
    print(kai)
 
    return  my_string.map{$0.lowercased()}.sorted(by: <).joined()
}


solution("Bcad")
