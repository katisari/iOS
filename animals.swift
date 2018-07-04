import UIKit

class Animal{
    var name: String
    var health = 100
    init(name: String){
        self.name = name
    }
    func displayHealth() {
        print(health)
    }
}

class Cat: Animal{
    init() {
        super.init(name: "Cat")
        self.health = 150
    }
    func growl() {
        print("Rawr!")
    }
    func run() {
        print("Running")
        health -= 10
    }
}

class Cheetah: Cat{
    override func run() {
        print("Running Fast")
        if self.health >= 50 {
            self.health -= 50
        }
    }
    func sleep() {
        if self.health <= 150 {
            self.health += 50
        }
    }
}

class Lion: Cat{
    override init() {
        super.init()
        self.health = 200
    }
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
    
}

var my_cheetah = Cheetah()
my_cheetah.run()
my_cheetah.run()
my_cheetah.run()
my_cheetah.run()
my_cheetah.health


var my_lion = Lion()
my_lion.run()
my_lion.run()
my_lion.run()
my_lion.health
my_lion.growl()
