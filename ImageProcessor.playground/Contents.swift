//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")

// Process the image!

let rgbaImage = RGBAImage(image: image!)

let pixelCount = rgbaImage!.width * rgbaImage!.height
let avgRed = 107
let avgGreen = 109
let avgBlue = 110
let sum = avgRed + avgGreen + avgBlue

for y in 0..<rgbaImage!.height {
    for x in 0..<rgbaImage!.width {
        let index = y * rgbaImage!.width + x
        
        var pixel = rgbaImage!.pixels[index]
        
        let redDelta = Int(pixel.red) - avgRed
        let greenDelta = Int(pixel.green) - avgGreen
        let blueDelta = Int(pixel.green) - avgBlue
        
        var modifier = 1 + 4 * (Double(y) / Double(rgbaImage!.height))
        if (Int(pixel.red) < avgRed) {
            modifier = 1
        }
        
        pixel.red = UInt8(max(min(255, Int(round(Double(avgRed) + modifier * Double(redDelta)))), 0))
    }
}



