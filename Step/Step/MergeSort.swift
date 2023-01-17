//
//  MergeSort.swift
//  Step
//
//  Created by andrei on 17.01.2023.
//

import Foundation

//Merge Sort
//-----------------------
var mas_copy = mas

func Merge (_ L_array: [Int], _ R_array: [Int]) -> [Int] {

    var Arr = [Int] ()
    var L = 0
    var R = 0
    
//    print(L_array)
//    print(R_array)
   
    while L < L_array.count && R < R_array.count {
        if L_array[L] < R_array[R] {
            Arr.append(L_array[L])
            L += 1
     } else
        if L_array[L] > R_array[R] {
            Arr.append(R_array[R])
            R += 1
        } else {
            Arr.append(L_array[L])
            L += 1
            Arr.append(R_array[R])
            R += 1
        }
    }
    while L < L_array.count {
        Arr.append(L_array[L])
        L += 1
    }

    while R < R_array.count {
        Arr.append(R_array[R])
        R += 1
    }

//  print(Arr)
    return Arr
}

func MergeSort (_ array: [Int]) -> [Int]{
    if array.count < 2 { return array}

    let mid = array.count / 2
    let left = MergeSort(Array(array[0..<mid]))
    let right = MergeSort(Array(array[mid..<array.count]))

    return Merge(left, right)
    }

//    var mas_copy_new = [Int]()      //change UInt32
//    mas_copy.forEach { i in
//    let j = Int(i)
//    mas_copy_new.append(j)}


//m = MergeSort(mas_copy_new)
//print (m)
