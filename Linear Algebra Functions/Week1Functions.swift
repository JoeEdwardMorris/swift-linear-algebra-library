//
//  Week1Functions.swift
//  Linear Algebra Functions
//
//  Created by Joe Morris on 04/09/2016.
//  Copyright © 2016 Joe Morris. All rights reserved.
//

import Foundation

func vectorAxpy (a: Double, x: Array<Double>, y: Array<Double>) -> Array<Double>? {
    if (x.count != y.count) {return nil}
    var z=[Double]()
    for i in 0...(x.count-1) {
        z.append ((a*x[i])+y[i])
    }
    return z
}

func vectorScale (a: Double, x: Array<Double>) -> Array<Double> {
    var y=[Double]()
    for i in 0...(x.count-1) {
        y.append (a*x[i])
    }
    return y
}

func vectorNorm2 (x: Array<Double>, y: Array<Double>) -> Double? {
    if (x.count != y.count) {return nil}
    var z = 0.0
    for i in 0...(x.count-1) {
        z += (x[i]*y[i])
    }
    return z
}

func vectorLength (x: Array<Double>) -> Double? {
    if let vectorNorm2Unwrapped = vectorNorm2 (x,y: x) {
        return sqrt(vectorNorm2Unwrapped)}
    else {return nil}
}

//func vectorLinear (a:Array<Double>, x:Array<Array<Double>>) -> Array<Double>? {
//    if (x.count != a.count) {return nil}
//    for i in 0...(x.count-1)
//
//}
