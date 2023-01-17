//
//  Kodeco.com .swift
//  Step
//
//  Created by andrei on 17.01.2023.
//

import Foundation

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
//func merge<T: Comparable>(_ left: [T], _  inuot right: [T]) -> [T] {
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
//m = mergeSort(&mas_copy_new)
//print(m)
