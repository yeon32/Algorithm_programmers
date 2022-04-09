import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answers: Set<Int> = []
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            answers.insert(numbers[i] + numbers[j])
        }
    }
    
    return answers.sorted()
}
