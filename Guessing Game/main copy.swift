//
//  main.swift
//  Guessing Game
//
//  Created by Tanner York on 8/20/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import Foundation

func PartOne() {
var playingGame = true

repeat {
    let randomNumber = Int(arc4random_uniform(101))
    print("Welcome to the Guessing Game!")
    print("Choose a number between 1 - 100")
    var userGuess = Int(readLine()!)
    var numOfUserGuess = 4
    
    while userGuess != randomNumber && numOfUserGuess > 0{
        
        if userGuess == nil {
            print("Invaled number, try agian>")
            userGuess = Int(readLine()!)
        }
        if userGuess! > 100 || userGuess! <= 0 {
            print("Invaled Number")
            userGuess = Int(readLine()!)
            if userGuess == nil {
                print("Invaled number, try agian>")
                userGuess = Int(readLine()!)
        }
        if userGuess! > randomNumber {
            print(" TOO HIGH! Try agian.")
            print("You have \(numOfUserGuess) guesses left")
            numOfUserGuess -= 1
            userGuess = Int(readLine()!)
            if userGuess == nil {
                print("Invaled number, try agian>")
                userGuess = Int(readLine()!)
        }
        if userGuess! < randomNumber {
            print("TOO LOW! Try agian.")
            print("You have \(numOfUserGuess) guesses left")
            numOfUserGuess -= 1
            userGuess = Int(readLine()!)
            if userGuess == nil {
                print("Invaled number, try agian>")
                userGuess = Int(readLine()!)
        }
        if numOfUserGuess == 0 {
            print("GAME OVER")
            playingGame = false
        }
        
        if userGuess == randomNumber {
            print("YOU WIN")
            print("Want to play again, Y/N?")
           
            var stillPLaying = readLine()!.uppercased()
            
            while stillPLaying != "Y" && stillPLaying != "N" {
                print("Would you like to play again Y/N?")
                stillPLaying = readLine()!.uppercased()
                
                if stillPLaying == "N" {
                    print("GOOD BYE!")
                    playingGame = false
                }
                if stillPLaying == "Y" {
                    playingGame = true
                }
            }
        }
    }
} while playingGame
}

















