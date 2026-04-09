func solution(_ s:String) -> String {
    var sArr = Array(s)
    sArr.sort()
    sArr.reverse()
    return String(sArr)
}