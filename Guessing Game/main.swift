//
//  main.swift
//  Guessing Game
//
//  Created by Tanner York on 8/20/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import Foundation


//Outline Of Game
/* 1. Geterate random number
 * 2. Promt User For Guess
 * 3. Accept User Imput
 *       -Make Sure User Imput is Usable
 * 4. Compare Guess To Random Number
 * 5. If Worng
 *       -Tell them if it is higher or lower
 *       -take guess from user(toatl of five)
 *       -If out of guesses restart
 *       -If wrong repeate guessing prosses untill the run out of guesses or get it wright.
 * 6. If Correct
 *       - Tell them they win
 *       -resart game
 */
var playingGame = true

repeat {
    // Create a random number and welcome/promt user to enter a number
    var randomNumber = Int(arc4random_uniform(101))
//    print("Correct Answer \(randomNumber)")
    print("Welcome to the Guessing Game")
    print("Choose a number between 1 and 100")
    
    var userGuess = Int(readLine()!)
    var numOfUserGuess = 4
    
    //There is a problem here on line 40
    while userGuess != randomNumber && numOfUserGuess > 0{
        
        if userGuess == nil {
            print("Invaled number, try agian>")
            userGuess = Int(readLine()!)
        }
        if userGuess! > 100 || userGuess! <= 0 {
            print("Invaled Number")
            userGuess = Int(readLine()!)
        }
        if userGuess! > randomNumber {
            print(" TOO HIGH! Try agian.")
            print("You have \(numOfUserGuess) guesses left")
            numOfUserGuess -= 1
            userGuess = Int(readLine()!)
        }
        if userGuess! < randomNumber {
            print("TOO LOW! Try agian.")
            print("You have \(numOfUserGuess) guesses left")
            numOfUserGuess -= 1
            userGuess = Int(readLine()!)
        }
        if numOfUserGuess == 0 {
            print("GAME OVER")
            playingGame = false
        }
        
        if userGuess == randomNumber {
            print("YOU WIN")
            print("Want to play again, Y/N?")
            //Asking user if they want to play agian or not.
            
            
            //This doesn't work beacuse if the user doens't enter y or n and its still a string it will start agian anyways.
            //        var playAgain = String(readLine()!)
            //
            //        if playAgain == nil {
            //            print("Error")
            //            playAgain = String(readLine()!)
            //        } else if playAgain == "Y" {
            //            playingGame = false
            //            playingGame = true
            //        } else if playAgain == "N" {
            //            playingGame = false
            //            print("Good Bye!")
            //
            //        }
            //Try this instead
            //Get user input to check
            var stillPLaying = readLine()!.uppercased()
            
            //If anything other than Y or N is entered it will coniunuously ask them to enter Y or N
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


















