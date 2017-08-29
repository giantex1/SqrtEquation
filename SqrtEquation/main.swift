//  Created by Stanislav Khvalinskyi on 8/25/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

func findRoots(a:Double, b:Double, c:Double) -> Array<Double>
{
    let D = b * b - 4 * a * c
    if D < 0
    {
        return []
    }
    else if D == 0
    {
        return [-b / (2 * a)]
    }
    else
    {
        return [
            (-b + sqrt(D)) / (2 * a),
            (-b - sqrt(D)) / (2 * a)
        ]
    }
}

let a:Double?, b:Double?, c:Double?
var aStr:String, bStr:String, cStr:String
print("ax\u{00B2} + bx + c = 0")

repeat
{
    print("Enter a:")
    aStr = readLine()!
} while (aStr.isEmpty)

repeat
{
    print("Enter b:")
    bStr = readLine()!
} while (bStr.isEmpty)

repeat
{
    print("Enter c:")
    cStr = readLine()!
} while (cStr.isEmpty)

a = Double(aStr)
b = Double(bStr)
c = Double(cStr)

if (a == nil || b == nil || c == nil)
{
    print("Invalid input value. Only digits are allowed!")
    exit(0)
}

if a == 0
{
    print("a cannot be a zero!")
    exit(0)
}

let result:Array<Double> = findRoots(a: a!, b: b!, c: c!)

switch (result.count)
{
    case 0: print("This equation has no natural roots")
    case 1: print("x = \(result[0])")
    case 2: print("x1 = \(result[0]), x2 = \(result[1])")
    default: print("WHF!!! O_o")
}
