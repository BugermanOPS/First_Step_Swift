//
//  main.swift
//  Step
//
//  Created by andrei on 09.01.2023.
//

import Foundation


var mas = (1...10).map{_ in arc4random_uniform(100)}

//var mas = [1,32,100,44,2,5,32,86,56,77]
print(mas)

var m = [Int] ()
var mas_copy = mas
//print(mas_copy)

//BubbleSort

/*let index = mas_copy.count
print(index)

for i in 0..<index-1 {
    for j in 0..<index-i-1 {
        if mas_copy[j] > mas_copy[j+1] {
            let temp = mas_copy[j]
            mas_copy[j] = mas_copy[j+1]
            mas_copy[j+1] = temp
        }
    }
}*/
//print(mas_copy)



//Merge Sort
//-----------------------

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
    print(Arr)
    return Arr
}

func MergeSort (_ array: [Int]) -> [Int]{
    if array.count < 2 { return array}

    let mid = array.count / 2
    let left = MergeSort(Array(array[0..<mid]))
    let right = MergeSort(Array(array[mid..<array.count]))

    return Merge(left, right)
    }


    var mas_copy_new = [Int]()      //change Uni32
    mas_copy.forEach { i in
        let j = Int(i)
        mas_copy_new.append(j)
    }

m = MergeSort(mas_copy_new)
print (m)




// Original from Kodeco.com
//-----------------------------------------

//
//func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
//  guard array.count > 1 else { return array }
//
//  let middleIndex = array.count / 2
//
//  let leftArray = mergeSort(Array(array[0..<middleIndex]))
//  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
//
//  return merge(leftArray, rightArray)
//}
//
//func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
//  var leftIndex = 0
//  var rightIndex = 0
//
//  var orderedArray: [T] = []
//
//  while leftIndex < left.count && rightIndex < right.count {
//    let leftElement = left[leftIndex]
//    let rightElement = right[rightIndex]
//
//    if leftElement < rightElement {
//      orderedArray.append(leftElement)
//      leftIndex += 1
//    } else if leftElement > rightElement {
//      orderedArray.append(rightElement)
//      rightIndex += 1
//    } else {
//      orderedArray.append(leftElement)
//      leftIndex += 1
//      orderedArray.append(rightElement)
//      rightIndex += 1
//    }
//  }
//
//  while leftIndex < left.count {
//    orderedArray.append(left[leftIndex])
//    leftIndex += 1
//  }
//
//  while rightIndex < right.count {
//    orderedArray.append(right[rightIndex])
//    rightIndex += 1
//  }
//
//  return orderedArray
//}
//
//var mas_copy_new = [Int]()      //change Uni32
//    mas_copy.forEach { i in
//        let j = Int(i)
//        mas_copy_new.append(j)
//    }
//
//m = mergeSort(mas_copy_new)
//print(m)
