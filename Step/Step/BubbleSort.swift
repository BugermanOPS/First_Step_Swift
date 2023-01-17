//
//  BubbleSort.swift
//  Step
//
//  Created by andrei on 17.01.2023.
//

import Foundation


//BubbleSort

func BubbleSort (){
    let index = mas_copy.count
//    print(index)
    
    for i in 0..<index-1 {
        for j in 0..<index-i-1 {
            if mas_copy[j] > mas_copy[j+1] {
                let temp = mas_copy[j]
                mas_copy[j] = mas_copy[j+1]
                mas_copy[j+1] = temp
            }
        }
    }
    print("BubbleSort = ", mas_copy)
}
