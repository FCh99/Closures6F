//
//  ViewController.swift
//  Closures6F
//
//  Created by Fausto Checa on 6/9/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
    
    // closures
    let addOne = { (a:Int) -> Int in
        return a + 1
    }
    
    let addThree = { (a:Int, b:Int) -> (Int) in
        return a + b + 3
    
    }
    
    let addThreeShort = { (a, b) in
        a + b + 3
    
    }
    
    let addFourShortest = {
        $0 + $1 + 4
    
    }
    
   
    let theOpposite = { (a: Bool) -> Bool in
        
        var b = false
        if(a == true) {
            b = false
        } else {
            b = true
            
        }
        return b
        
    }
    
    
    
    
    
    
    // function
    func addTwoFunc (a:Int) -> Int {
        return a + 2
        
    }
    
    func modulo (a : Int) -> Double {
        return Double(a % 10)
    
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        let myAddOne = addOne(10)
        print(">> this is myAddOne: \(myAddOne)")
        
        let myAddTwoFunc = addTwoFunc(a: 20)
        print(">> This is my addTwo: \(myAddTwoFunc)")
        
        let myAddThree = addThree(1, 1)
        print(">> This is my addThree: \(myAddThree)")
        
        let myAddThreeShort = addThreeShort(4, 4)
        print(">> This is myAddThreeShort \(myAddThreeShort)")
        
        let myAddFourShortest = addFourShortest(3, 3)
        print(">> This is myAddFourShortest: \(myAddFourShortest)")
        
        let myOpposite = theOpposite(false)
        print(">> This is myOpposite: \(myOpposite)")
        
        let myModulo10 = modulo(a: 12)
        print(">> This is myModulo: \(myModulo10)")
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

