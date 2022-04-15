import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer:[Int] = []          //정답을 담을 배열을 만들어준다
    
    for command in commands {      //commands안에서 i,j,k를 알아내야함 
        let i = command[0] - 1     //-1은 배열은 0번째 인덱스부터 시작하기 때문
        let j = command[1] - 1
        let k = command[2] - 1
        
        let number = Array(array[i...j]).sorted()[k]    
        //i번째~k번째까지 자르고 정렬한 다음 k번재 수 꺼내기
        answer.append(number)    //number를 answer배열 안에 넣기
    }                          
    return answer
}
