func solution(_ arr:[Int]) -> Double {

    var sum: Int = 0

    for value in arr {

        sum += value

    }

    return Double(sum) / Double(arr.count)
}
