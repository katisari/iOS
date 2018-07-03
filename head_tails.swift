import UIKit

//Create a function tossCoin() -> String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result

func tossCoin() -> String {
    print("Tossing a Coin!")
    let a = Int(arc4random_uniform(2))
    var result: String
    if a == 0 {
        result = "Heads"
    }
    else{
        result = "Tails"
    }
    print(result)
    return result
}
//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss


func tossMultipleCoins(times: Int) ->Double {
    var head_count = 0
    for i in 0..<times{
        if tossCoin() == "Heads" {
            head_count += 1
        }
    }
    return Double(head_count)/Double(times)
}

tossMultipleCoins(times: 5)
