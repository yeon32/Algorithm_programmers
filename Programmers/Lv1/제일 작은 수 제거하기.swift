func solution(_ arr:[Int]) -> [Int] {
    
    var result = arr      
    
    let minValue = arr.min()! 

    let minIndex = arr.index(of: minValue)!  
   
    result.remove(at: minIndex)
  
    return result.isEmpty ? [-1]: result
}
