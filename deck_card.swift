import UIKit

struct Card{
    var Color: String
    var Roll : Int
    init() {
        self.Roll = Int(arc4random_uniform(6)) + 1
        let roll = self.Roll
        if (roll == 1) || (roll == 2) {
            self.Color = "Blue"
        } else if (roll == 3 || roll == 4) {
            self.Color = "Red"
        } else {
            self.Color = "Green"
        }
    }
}

class Deck{
    var cards = [Card]()
    init() {
        var blue_num = 0
        var green_num = 0
        var red_num = 0
        while (blue_num < 10) || (green_num < 10) || (red_num < 10) {
            if !(blue_num = 10) || (green_num = 10) || (red_num = 10) {
                let a  = Card()
                if a.Color == "Blue" {
                    blue_num += 1
                } else if a.Color == "Green" {
                    green_num += 1
                } else {
                    red_num += 1
                }
                cards.append(a)
            }
        }
    }
    func removetopmost()->Card{
        let last_card = cards.remove(at: cards.count-1)
        return last_card
    }
    func isEmpty()->Bool{
        if cards.count == 0 {
            return true
        }
        return false
    }
    func shuffle(){
        for _ in 1...100{
            let a = Int(arc4random_uniform(UInt32(cards.count)))
            let b = Int(arc4random_uniform(UInt32(cards.count)))
            let temp = cards[a]
            cards[a] = cards[b]
            cards[b] = temp
        }
    }
}

class Player{
    var name: String
    var hand: [Card]
    func draw(deck_drawn: Deck)->Card{
        let random_num = Int(arc4random_uniform(UInt32(deck_drawn.cards.count)))
        let card_drawn = deck_drawn.removetopmost()
        return card_drawn
    }
    func rollDice()->Int{
        return Int(arc4random_uniform(6)) + 1
    }
    func matchingcard(color: String, roll: Int) {
        var counter = 0
        for i in hand {
            if i.color == color {
                if i.roll == roll {
                    counter += 1
                }
            }
        }
    }
}
