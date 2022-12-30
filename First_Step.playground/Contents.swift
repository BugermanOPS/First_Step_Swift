import Cocoa

//var mas = (1...10).map{_ in arc4random_uniform(100)}
//print(mas)

var mas = [1,32,100,44,2,5,32,86,56,77]
print(mas)

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



//Merge sort

//func Merge(L_array: [Int], R_array: [Int]) {
//    var L_Index = 0
//    var R_Index = 0
//
//    var arr = [Int]()
//
//    while (L_Index < L_array.count && R_Index < R_array.count)
//    {
//        if (L_array[L_Index] < R_array[R_Index]) {
//            arr.append(L_array[L_Index])
//            L_Index += 1
//        }
//        else if (L_array[L_Index] > R_array[R_Index]) {
//            arr.append(R_array[R_Index])
//            R_Index += 1
//
//        } else {
//            arr.append(R_array[L_Index])
//            L_Index += 1
//            arr.append(R_array[R_Index])
//            R_Index += 1
//        }
//    }
//
//
//    while (L_Index < L_array.count){
//        arr.append(L_array[L_Index])
//        L_Index += 1
//    }
//    while (R_Index < R_array.count){
//        arr.append(R_array[R_Index])
//        R_Index += 1
//    }
//    return
//
//}
//
//
//func MergeSort(array: [Int]){
//
//    if array.count < 2 {
//        return
//    }
//
//    let mid = array.count/2
//    var left = Array(array[0..<mid])
//    var right = Array(array[mid..<array.count])
//
//    MergeSort(array: left)
//    print(left)
//    MergeSort(array: right)
//   // print(right)
//    Merge(L_array: left, R_array: right)
//}
//
//    var mas_copy_new = [Int]()
//    mas_copy.forEach { i in
//        let j = Int(i)
//        mas_copy_new.append(j)
//    }
//
//MergeSort(array: mas_copy_new)
//
////print(mas_copy_new)



func Merge (L_array: [Int], R_array: [Int]) {
    
    var Arr : [Int] = []
    var L = 0
    var R = 0
    
    print(L_array)
    print(R_array)
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
}

func MergeSort (array: [Int]){
    
    if array.count < 2 { return }
    
    var mid = array.count / 2
    var left = Array(array[0..<mid])
    var right = Array(array[mid..<array.count])

    MergeSort(array: left)
    MergeSort(array: right)
    print(left,right)
//    Merge(L_array: left, R_array: right)
}

    var mas_copy_new = [Int]()      //change Uni32
    mas_copy.forEach { i in
        let j = Int(i)
        mas_copy_new.append(j)
    }

MergeSort(array: mas_copy_new)
