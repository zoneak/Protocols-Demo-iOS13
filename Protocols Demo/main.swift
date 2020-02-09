//
//  main.swift
//  Protocols Demo
//
//  Created by Adriano Kaito on 09/02/20.
//  Copyright © 2020 AK. All rights reserved.
//

protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky")
    }
    
    func soar() {
        print("The eagle glides in the air usind air currents")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplace uses its engine to lift off into the air")
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myPlane)
