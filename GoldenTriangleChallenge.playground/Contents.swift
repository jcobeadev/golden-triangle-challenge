import Foundation

func goldenTriangle(arr: [Int]) -> Bool {
    guard arr.count >= 3 else { return false }
    let arr = arr.sorted()
    for i in stride(from: 0, through: arr.count - 3, by: 1) {
        if arr[i] + arr[i + 1] > arr[i + 2],
           arr[i + 1] + arr[i + 2] > arr[i],
           arr[i + 2] + arr[i] > arr[i + 1] {
            return true
        }
    }
    return false
}

goldenTriangle(arr: [10,5,8])
goldenTriangle(arr: [3,4,5])
goldenTriangle(arr: [3,4,20])
goldenTriangle(arr: [10,2,5,1,8,20])
goldenTriangle(arr: [10,50,5,1])
