//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Sagar c bellad on 23/03/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    var text : String
    var answer : String
    init(q : String,a : String){
        self.text = q
        self.answer = a
    }
}
