import Foundation

func solution(_ n:Int64) -> Int64 {
    var result: Int64 = 0 // 결과값을 담을 변수
    let number = sqrt(Double(n))
    
    if number == Double(Int64(number)) {
        result = Int64((number + 1) * (number + 1))
    } else {
        result = -1
    }
  
    return result
}

