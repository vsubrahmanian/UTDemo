//
//  ViewController.swift
//  UTDemo
//
//  Created by Vijay Subrahmanian on 25/05/15.
//  Copyright (c) 2015 Vijay Subrahmanian. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    @IBOutlet weak var firstWord: UITextField!
    @IBOutlet weak var secondWord: UITextField!
    @IBOutlet weak var comparisonResult: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func compareStrings(sender: UIButton) {
        
        if ((count(self.firstWord.text) < 1) || (count(self.secondWord.text) < 1)) {
            self.comparisonResult.text = "Enter two words to compare!"
            return;
        }
        
        if self.areStringsAnagrams(self.firstWord.text, string2: self.secondWord.text) {
            self.comparisonResult.text = "YES!"
        } else {
            self.comparisonResult.text = "NOPE!"
        }
    }
    
    public func areStringsAnagrams(string1 :String, string2:String) -> Bool {
        
        if count(string1) != count(string2) {
            // If the lengths of the strings are not same, they cannot be Anagrams.
            return false
        }
        // Create a closure for our sort comparison
        func sortFunc(c1: Character, c2: Character) -> Bool {
            return c1 > c2
        }
        let word1 = sorted(string1.lowercaseString, sortFunc) // Sorting String 1 (ignoring case .lowercaseString)
        let word2 = sorted(string2.lowercaseString, sortFunc) // Sorting String 2 (ignoring case .lowercaseString)

        for var index = 0; index < count(string1); index++ {
            // Now compare to check if all the letters match
            if Array(word1)[index] != Array(word2)[index] {
                return false
            }
        }
        return true
    }

}
