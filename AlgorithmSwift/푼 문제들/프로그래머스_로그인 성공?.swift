import Foundation

func solution(_ id_pw: [String], _ db: [[String]]) -> String {
    
    if db.contains(id_pw) {
        return "login"
    }
    var result = "fail"
        
    for i in db {
        if i[0] == id_pw[0] && i[1] != id_pw[1] {
            result = "wrong pw"
        }
    }
    
    return result
}
