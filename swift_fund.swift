//: Playground - noun: a place where people can play

import UIKit


var type: String = "Rectangle"
var description: String = "A quadrilateral with four right angles"
var width: Int = 5
var height: Double = 10.5
var area: Double = Double(width) * height
height += 1
width += 1
area = Double(width) * height
// Note how you can "interpolate" variables into Strings using the following syntax
print("The shape is a \(type) or \(description) with an area of \(area)")

//1.
for i in 1...255{
    print(i)
}

//2.
for i in 1...100{
    if !(i%3==0 && i%5==0){
        if i%3==0 || i%5==0 {
            print(i)
        }
    }
}

//3.
for i in 1...100{
    if (i%3==0 && i%5==0){
        print(i, "FizzBuzz")
    } else if i%3==0 {
        print(i, "Fizz")
    } else if i%5==0{
        print(i, "Buzz")
    }
}


// Swift 3

//Write a program that adds the numbers 1-255 to an array
var newarr = [Int]()
for i in 1...255{
    newarr.append(i)
}
//print (newarr)

//Swap two random values in the array
var a = Int(arc4random_uniform(255))
var b = Int(arc4random_uniform(255))
var a_index : Int = a-1
var b_index : Int = b-1

var temp = newarr[a_index]
newarr[a_index] = newarr[b_index]
newarr[b_index] = temp

//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
var c: Int
var d: Int
var c_index: Int
var d_index: Int
for i in 1...100{
    c = Int(arc4random_uniform(255))
    d = Int(arc4random_uniform(255))
    print(c)
    c_index = c-1
    d_index = d-1
    
    temp = newarr[c_index]
    newarr[c_index] = newarr[d_index]
    newarr[d_index] = temp
}
print(newarr)

//Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.
var counter: Int = 0
for b in newarr{
    if b==42 {
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(counter)")
        newarr.remove(at: counter)
    }
    counter += 1
}
