//
//  main.swift
//  Step
//
//  Created by andrei on 09.01.2023.
//

import Foundation


var mas = (1...10).map{_ in arc4random_uniform(100)}

//var mas = [1,32,100,44,2,5,32,86,56,77]
print("Random mas = ", mas)

var m = [Int] ()

//var mas_copy = mas
//print(mas_copy)


    var mas_copy_new = [Int]()      //change Uni32
    mas_copy.forEach { i in
        let j = Int(i)
        mas_copy_new.append(j)
    }


print ("MergeSort = ", MergeSort(mas_copy_new))

BubbleSort()
