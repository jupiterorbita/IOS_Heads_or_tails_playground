// Heads or tails
import UIKit

//Create a function tossCoin() -> String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result
//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss


func tossCoin() -> String {
    var coinIs: String = String()
    print("Tossing Coin")
    let coin:Int = Int(arc4random_uniform(2))
    print("coin is ", coin)
    if coin == 0 {
        print("coin is \(coin) -> HEADS")
        coinIs = "HEADS"
//        return "HEADS"
    }
    else if coin == 1 {
        print("coin is \(coin) -> TAILS")
        coinIs = "TAILS"
//        return "TAILS"
    }
    return coinIs
}
tossCoin()

func tossMultipleCoins(num: Int) -> Double {
    var tails_count: Int = 0
    var heads_count: Int = 0
    for _ in 0...num {
        tossCoin()
        if tossCoin() == "TAILS" {
            tails_count += 1
        }
        else if tossCoin() == "HEADS" {
            heads_count += 1
        }
    }
    let ratio: Double = Double(heads_count) / Double(num)
    print("RATIO of head toss to total toss \(ratio)")
    return Double(heads_count) / Double(num)
}
tossMultipleCoins(num: 12)








