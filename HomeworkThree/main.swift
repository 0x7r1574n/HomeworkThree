//
//  main.swift
//  HomeworkThree
//
//  Created by Cechi Shi on 10/13/15.
//  Copyright © 2015 Cechi Shi. All rights reserved.
//

import Foundation

// Part 1 Build a calculator

func add(left: Double, right: Double) -> Double {
    return left + right;
}

func subtract(left: Double, right: Double) -> Double {
    return left - right;
}


func multiply(left: Double, right: Double) -> Double {
    return left * right;
}


func divide(left: Double, right: Double) -> Double {
    return left / right;
}

func calculate(operation: String, left: Double, right: Double) -> Double? {
    switch operation {
    case "add", "plus", "+":
        return add(left, right: right)
    case "subtract", "minus", "-":
        return subtract(left, right: right)
    case "multiply", "time", "*":
        return multiply(left, right: right)
    case "divide", "over", "/":
        return divide(left, right: right)
    default:
        return nil
    }
}

print("Simple calculations")
print("===================")
print("add(1.5, right: 2) = \(add(1.5, right: 2))")
print("substract(1.5, right: 2) = \(subtract(1.5, right: 2))")
print("multiply(2.4, right 4.5) = \(multiply(2.4, right: 4.5))")
print("divide(2.4, right: 2) = \(divide(2.4, right: 2))")
let addResult = calculate("add", left: 1.5, right: 2)!
print("calculate(\"add\", left: 1.5, right: 2) = \(addResult)")
let subtractResult = calculate("subtract", left: 1.5, right: 2)!
print("calculate(\"subtract\", left: 1.5, right: 2) = \(subtractResult)")
let multiplyResult = calculate("multiply", left: 2.4, right: 4.5)!
print("calculate(\"multiply\", left: 2.4, right: 4.5) = \(multiplyResult)")
let divideResult = calculate("divide", left: 2.4, right: 2)!
print("calculate(\"divide\", left: 2.4, right: 2) = \(divideResult)")
print("")
print("")
print("")

// Part 2 Array Fun

func arraySum(incoming: [Int]) -> Int {
    var result: Int = 0
    for e in incoming {
        result += e
    }
    return result
}

func arrayProduct(incoming: [Int]) -> Int {
    var result: Int = 0
    if incoming.count != 0 {
        result = 1
        for e in incoming {
            result *= e
        }
    }
    return result
}

func arrayCount(incoming: [Int]) -> Int {
    return incoming.count
}

func arrayAverage(incoming: [Int]) -> Double {
    return Double(arraySum(incoming)) / Double(arrayCount(incoming))
}

func arrayCalculation(operation: String, incoming: [Int]) -> Int? {
    switch operation {
    case "sum", "add", "+":
        return arraySum(incoming)
    case "product", "multiply", "mul", "*":
        return arrayProduct(incoming)
    case "count":
        return arrayCount(incoming)
    case "avg", "average":
        return Int(arrayAverage(incoming))
    default:
        return nil
    }
}

print("Array fun")
print("===================")
print("arraySum([1, 2, 3]) = \(arraySum([1, 2, 3]))")
print("arraySum([]) = \(arraySum([]))")
print("arraySum([-1, 1, 3]) = \(arraySum([-1, 1, 3]))")

print("arrayProduct([1, 2, 3]) = \(arrayProduct([1, 2, 3]))")
print("arrayProduct([]) = \(arrayProduct([]))")
print("arrayProduct([-1, 1, 3]) = \(arrayProduct([-1, 1, 3]))")

print("arrayCount([]) = \(arrayCount([]))")
print("arrayCount([1, 2, 3]) = \(arrayCount([1, 2, 3]))")

print("arrayAverage([1, 2, 3]) = \(arrayAverage([1, 2, 3]))")
print("arrayAverage([]) = \(arrayAverage([]))")
print("arrayAverage([-1, 1, 3]) = \(arrayAverage([-1, 1, 3]))")

let sumResult = arrayCalculation("sum", incoming: [1, 2, 3])!
print("arrayCalculation(\"sum\", incoming: [1, 2, 3]) = \(sumResult)")
let productResult = arrayCalculation("product", incoming: [1, 2, 3])!
print("arrayCalculation(\"product\", incoming: [1, 2, 3]) = \(productResult)")
let countResult = arrayCalculation("count", incoming: [1, 2, 3])!
print("arrayCalculation(\"count\", incoming: [1, 2, 3]) = \(countResult)")
let averageResult = arrayCalculation("average", incoming: [1, 2, 3])!
print("arrayCalculation(\"average\", incoming: [1, 2, 3]) = \(averageResult)")


// Part 3 Points
func pointsAdd(left: (Double, Double), right: (Double, Double)) -> (Double, Double) {
    return (left.0 + right.0, left.1 + right.1)
}

func pointsSubtract(left: (Double, Double), right: (Double, Double)) -> (Double, Double) {
    return (left.0 - right.0, left.1 - right.1)
}

func pointsCalculations(operation: String, left: [String : Double], right: [String : Double]) -> (Double, Double)? {
    if (left["x"] == nil || right["x"] == nil || left["y"] == nil || right["y"] == nil) {
        return nil
    }
    switch operation {
    case "add":
        return (left["x"]! + right["x"]!, left["y"]! + right["y"]!)
    case "subtract":
        return (left["x"]! - right["x"]!, left["y"]! - right["y"]!)
    default:
        return nil
    }
}


print("")
print("")
print("")
print("Points")
print("===================")
let pointAddResult = pointsCalculations("add", left: ["x":1, "y": 1], right: ["x": 1, "y": 1])!
print("pointsCalculations(\"add\", left: [\"x\":1, \"y\": 1], right: [\"x\": 1, \"y\": 1])! = \(pointAddResult)")
let pointSubtractResult = pointsCalculations("subtract", left: ["x":1, "y": 1], right: ["x": 1, "y": 1])!
print("pointsCalculations(\"subtract\", left: [\"x\":1, \"y\": 1], right: [\"x\": 1, \"y\": 1])! = \(pointSubtractResult)")
let pointsWithoutXOrY = pointsCalculations("add", left: ["y": 1], right: ["x": 1])
print("pointsCalculations(\"add\", left: [\"y\": 1], right: [\"x\": 1]) = \(pointsWithoutXOrY)")



