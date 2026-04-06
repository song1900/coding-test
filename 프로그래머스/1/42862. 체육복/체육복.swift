import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var realLost: [Int] = lost.filter { !reserve.contains($0)}
    var realReserve: [Int] = reserve.filter { !lost.contains($0)}
    
    realLost.sort()
    realReserve.sort()
    
    for r in realReserve {
        if let i = realLost.firstIndex(of: r - 1) {
            realLost.remove(at: i)
        } else if let i = realLost.firstIndex(of: r + 1) {
            realLost.remove(at: i)
        }
    }
    
    return n - realLost.count
}