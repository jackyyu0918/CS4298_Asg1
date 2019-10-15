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
        
        list.append(Question(questionText:"When is the first double Saturday day in NexCalendar?", choiceA: "1st January", choiceB: "29th Feburary", choiceC: "31st August", choiceD: "31st December", answer: 3))
        
        list.append(Question(questionText:"What is the second double Sunday day of a year in NexCalendar? (If it is a Leap year)", choiceA: "1st January", choiceB: "29th Feburary", choiceC: "31st August", choiceD: "31st December", answer: 4))
        
        list.append(Question(questionText:"Which is the benefit of using NexCalendar?", choiceA: "Simple & Consistent", choiceB: "Memory-friendly", choiceC: "Economical & Efficient", choiceD: "A, B & C", answer: 4))
        
        list.append(Question(questionText:"Are you gonna use it?", choiceA: "Yes", choiceB: "Choice A", choiceC: "Choice B ", choiceD: "Choice C", answer: 1))
        
        
    }
}
