
//  Created by Supriyo Mondal on 01/03/20.
//  Copyright © 2020 Supriyo Mondal. All rights reserved.
//

/*

Given an integer N. Find the number of digits that appear in its factorial. 
Factorial is defined as, factorial(n) = 1*2*3*4……..*N and factorial(0) = 1.

*/


import Foundation

func findDigitsInAFactorial(n:Int) -> Int {
    guard  n > 1 else {
        return 1
    }
    var digits:Float = 0.0
    for i in 2..<n+1 {
       digits += log10(Float(i))
    }
    
    return Int(digits + 1.0)
}

print(findDigitsInAFactorial(n: 120))