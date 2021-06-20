
//  Created by Supriyo Mondal on 01/03/20.
//  Copyright © 2020 Supriyo Mondal. All rights reserved.
//

/*

Find all the subset of an string using Include Not Include concept

*/


import Foundation

func findSubset(_ n: Int, _ arr:[Int],_ initialArr:[[Int]]) -> [[Int]] {
    var subsets:[[Int]]?
    if n == 0 {
        return initialArr
    }

    initialArr.forEach{(val) in 
        if subsets == nil  {
            subsets = [val]
        } else {
            subsets!.append(val)
        }
        
        subsets!.append([arr[n-1]] + val)
    }

    return findSubset(n-1,arr,subsets!)
    
}

print(findSubset(3,[1,2,3],[[]]))


