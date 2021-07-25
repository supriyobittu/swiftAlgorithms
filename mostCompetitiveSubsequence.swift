
//  Created by Supriyo Mondal on 25/07/21.
//  Copyright © 2021 Supriyo Mondal. All rights reserved.
//

/*

Given an integer array nums and a positive integer k, return the most competitive subsequence of nums of size k.

An array's subsequence is a resulting sequence obtained by erasing some (possibly zero) elements from the array.

We define that a subsequence a is more competitive than a subsequence b (of the same length) 
if in the first position where a and b differ, subsequence a has a number less than the corresponding number in b. 
For example, [1,3,4] is more competitive than [1,3,5] 
because the first position they differ is at the final number, and 4 is less than 5.

*/


import Foundation

func mostCompetitive(_ nums: [Int], _ k: Int) -> [Int] {
        var subSet:[[Int]] = [[]]
        var mostCompetitive: [Int] = []
        var length = nums.count
        var range = NSDecimalNumber(decimal: pow(2,length) - 1).intValue
        
        var subSets:[Int] = []
        for i in 0...range {
            subSets = []
            for j in 0...length-1 {
                if (i & (1<<j) > 0) {
                    subSets.append(nums[j])
                }
                
                if j == length-1 {
                    subSet.append(subSets)
                }
            } 
        }

        var joinedSets = subSet.filter{ $0.count == k}
        
        var sortedSets = joinedSets.sorted{ $0[0] < $1[0] }
    
        for i in 1..<k {
           sortedSets = sortedSets.sorted {(a,b) -> Bool in 
                                               if a[i-1] <= b[i-1] {
                                                   for j in 0..<i-1 {
                                                       if a[j] > b[j] {
                                                           return false
                                                       }
                                                   }
                                                   return a[i] < b[i]
                                               } else {
                                                   return false
                                               }
                                           }
        }
        
        if let competitive = sortedSets.first {
            mostCompetitive = competitive
        }   
        
        return mostCompetitive
    }