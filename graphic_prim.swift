import UIKit

struct Point{
    var X: Double
    var Y: Double
    init(X: Double = 0, Y: Double = 0) {
        self.X = X
        self.Y = Y
    }
}

struct Line{
    var Start: Point
    var End: Point
    var length: Double
    init(FirstPoint: Point, SecondPoint: Point, length: Double) {
        self.length=length
        Start = FirstPoint
        End = SecondPoint
    }
    func lengthofline() -> Double{
        return length
    }
}

struct Triangle{
    var Points: [Point] = [Point]()
    init(FirstPoint: Point, SecondPoint: Point, ThirdPoint: Point) {
        Points.append(FirstPoint)
        Points.append(SecondPoint)
        Points.append(ThirdPoint)
    }
}
