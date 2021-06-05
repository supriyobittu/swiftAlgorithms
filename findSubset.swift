
//  Created by Supriyo Mondal on 01/03/20.
//  Copyright © 2020 Supriyo Mondal. All rights reserved.
//

/*

Find all the subset of an string using bitwise concept

*/


import Foundation

func findSubSet(s: String) -> [String] {
    var subSet:[String] = []

    var n = s.length
    var range = NSDecimalNumber(decimal: pow(2,n) - 1)

    for i in 0...range.intValue {
        subSet.append(" ")
        for j in 0..<n {
            if (i&(1<<j) > 0) {
                subSet.append(s[j])
            }
        }
    }
    var joinedSet =  subSet.joined().components(separatedBy:" ")
    return joinedSet
}


extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}

print(findSubSet(s: "abc"))


