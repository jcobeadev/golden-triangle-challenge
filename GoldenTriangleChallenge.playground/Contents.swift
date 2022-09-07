import Foundation

func goldenTriangle(arr: [Int]) -> Bool {
    // check if we can create a triangle base on
    // the size of the input
    guard arr.count >= 3 else { return false }

    // sort the array so it will be easier for us to check
    // if it is a golden triangle
    let arr = arr.sorted()

    // `through` in stride is similar to 0...arr.count
    // `to` in stride is similar to 0..<arr.count
    // we traverse through size - 3 to prevent out of bounds issues
    for i in stride(from: 0, through: arr.count - 3, by: 1) {
        if arr[i] + arr[i + 1] > arr[i + 2],    // 10 + 5 > 8
           arr[i + 1] + arr[i + 2] > arr[i],    // 5 + 8 > 10
           arr[i + 2] + arr[i] > arr[i + 1] {   // 8 + 10 > 5
            return true
        }
    }
    return false
}

goldenTriangle(arr: [10,5,8]) // true
goldenTriangle(arr: [3,4,5]) // true
goldenTriangle(arr: [3,4,20]) // false
goldenTriangle(arr: [10,2,5,1,8,20]) // true
goldenTriangle(arr: [10,50,5,1]) // false
