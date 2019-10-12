//
//  QuestionBank.swift
//  CS4298_Asg1
//
//  Created by YU Ka Kit on 12/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init(){
        list.append(Question(questionText:"What is the first day of a year in NexCalendar?", choiceA: "Monday", choiceB: "Friday", choiceC: "Saturday", choiceD: "Sunday", answer: 1))
        
        list.append(Question(questionText:"What is the end day of a year in NexCalendar?", choiceA: "Monday", choiceB: "Friday", choiceC: "Saturday", choiceD: "Sunday", answer: 2))
        
        list.append(Question(questionText:"When is the first happy satuday day in NexCalendar?", choiceA: "Monday", choiceB: "Tuesday", choiceC: "31st Aug", choiceD: "Sunday", answer: 3))
        
        list.append(Question(questionText:"What is the first day of a year in NexCalendar?", choiceA: "Monday", choiceB: "Tuesday", choiceC: "Saturday", choiceD: "31st Dec (Leap Year)", answer: 4))
    }
}
