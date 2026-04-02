import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map { command in
        let sorted = array[(command[0]-1)...(command[1]-1)].sorted()
        return sorted[command[2]-1]
        
    }
}