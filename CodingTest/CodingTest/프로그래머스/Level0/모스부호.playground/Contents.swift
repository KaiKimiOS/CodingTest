import UIKit


func solution(_ letter:String) -> String {
    
   var  dictionary = [
        ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f", "--.": "g", "....": "h", "..": "i",
        ".---": "j", "-.-": "k", ".-..": "l", "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r",
        "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x", "-.--": "y", "--..": "z"
        ]
    
    
    
    var abc = letter.components(separatedBy: " ").map{dictionary[$0]!}.joined()
print(abc)
    
    
    
    var kai = "kai is abcdede zdzd gege"
    
    var aaaaaa = kai.components(separatedBy: " ") // " " 한것만 분리해서 저정하기 [배열]이 된다
    return abc
    }


solution(".... . .-.. .-.. ---")
