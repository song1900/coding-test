import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: [Int] = []
    
    for i in numbers.indices {
        guard i != numbers.count - 1 else { break }
        for j in (i+1)...(numbers.count-1) {
            result.append(numbers[i] + numbers[j])
        }
    }
    
    
    return Set(result).sorted()
}