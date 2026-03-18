import Foundation                                                                                                     
                                                                                                                      
  let n = Int(readLine()!)!                                                                                           
  var meetings = [(start: Int, end: Int)]()                                                                             
                                                                                                                        
  for _ in 0..<n {
      let line = readLine()!.split(separator: " ").map { Int($0)! }
      meetings.append((line[0], line[1]))
  }

  meetings.sort {
      if $0.end == $1.end {
          return $0.start < $1.start
      }
      return $0.end < $1.end
  }

  var count = 0
  var lastEnd = 0

  for meeting in meetings {
      if meeting.start >= lastEnd {
          count += 1
          lastEnd = meeting.end
      }
  }

  print(count)