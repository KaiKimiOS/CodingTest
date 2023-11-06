import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[5], n[4])

for _ in 0..<b {
    print(Array(repeating: "*", count: a))
}




