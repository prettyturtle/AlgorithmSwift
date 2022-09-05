import Foundation

var n = readLine()!

n = n.replacingOccurrences(of: "pi", with: " ")
n = n.replacingOccurrences(of: "ka", with: " ")
n = n.replacingOccurrences(of: "chu", with: " ")
n = n.replacingOccurrences(of: " ", with: "")
print(n.isEmpty ? "YES" : "NO")
