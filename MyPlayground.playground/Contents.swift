//: Playground - noun: a place where people can play

import UIKit
import Foundation

 
func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let result = NSString(data: inputData,
        encoding:NSUTF8StringEncoding) as! String
    return
        result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

let aPoint = (1, 3)
print(aPoint.1)
switch aPoint {
case let (x, y) where x == y:
    print("equal")
case let (x, y):
    print("\(x)")
}

func mean(starting: Double, numbers : Double...) -> Double {
    return 0.0
}
mean(0, numbers: 1, 2, 3, 2) //Converts it into an array

var add = { (left:Int, right: Int) -> Int in
    return left + right
}

let add2 : (Int, Int) -> Double = { (left, right) -> Double in
    return Double(left + right)
}

add = { $0 + $1 }

func mathOp(left: Int, right: Int, op: (Int, Int) -> Int) {
    op(left, right)
}

mathOp(1, right: 2) {
    $0 + $1
}

//func factorial(num: Int) {
//    let memo = [0:1]()
//    func fact(num: Int, dict: [Int: Int]) -> Int {
//        if memo[num] != 0 {
//            return memo[num]
//        } else {
//            n * fact(num -1, dict: )
//        }
//    }
//}

typealias Age = UInt8 //Useful for encapsilation incase you need to change to UInt16 lateron

let names : [String] = ["Fred", "Barney", "tom"]
let nonFredNames = names.filter({(cand) -> Bool in return cand != "Fred"})
let hashedNames = names.map({(cand : String) -> Int in cand.hash })
