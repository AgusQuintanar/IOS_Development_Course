import UIKit

func calculateFibonacciSequence (indexFibonacci : Int) -> [Int]{
    var fibonacciSequence = [0,1]
    for x in 0..<indexFibonacci {
        fibonacciSequence.append(fibonacciSequence[x] + fibonacciSequence[x+1])
    }
    return fibonacciSequence
}
print(calculateFibonacciSequence(indexFibonacci: 5))
