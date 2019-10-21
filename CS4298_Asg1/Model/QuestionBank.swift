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
        if Language_Control.language == 0 {
            list.append(Question(image: "Janaury_screenshoot", questionText:"What is the first day of a year in NexCalendar?", choiceA: "Monday", choiceB: "Friday", choiceC: "Saturday", choiceD: "Sunday", answer: 1))
        
            list.append(Question(image: "Screenshot DecCalendar", questionText:"What is the end day of a year in NexCalendar?", choiceA: "Monday", choiceB: "Friday", choiceC: "Saturday", choiceD: "Sunday", answer: 2))
        
            list.append(Question(image: "Screenshot _AugSep copy", questionText:"When is the first double Saturday day in NexCalendar?", choiceA: "1st January", choiceB: "29th Feburary", choiceC: "31st August", choiceD: "31st December", answer: 3))
        
            list.append(Question(image: "Screenshot DecCalendar", questionText:"What is the second double Sunday day of a year in NexCalendar? (If it is a Leap year)", choiceA: "1st January", choiceB: "29th Feburary", choiceC: "31st August", choiceD: "31st December", answer: 4))
        
            list.append(Question(image: "benefits", questionText:"Which is the benefit of using NexCalendar?", choiceA: "Simple & Consistent", choiceB: "Memory-friendly", choiceC: "Economical & Efficient", choiceD: "A, B & C", answer: 4))
        
            list.append(Question(image: "thumbsup", questionText:"Are you gonna use it?", choiceA: "Yes", choiceB: "Choice A", choiceC: "Choice B ", choiceD: "Choice C", answer: 1))
            
        }else if Language_Control.language == 1{
            
            list.append(Question(image: "Janaury_screenshoot", questionText:"NexCalendar中的第一天是?", choiceA: "星期一", choiceB: "星期五", choiceC: "星期六", choiceD: "星期日", answer: 1))
            
            list.append(Question(image: "Screenshot DecCalendar",questionText:"NexCalendar中的最後一天是?", choiceA: "星期一", choiceB: "星期五", choiceC: "星期六", choiceD: "星期日", answer: 4))
            
            list.append(Question(image: "Screenshot _AugSep copy", questionText:"NexCalendar中第一個延長日是?", choiceA: "1月1日", choiceB: "2月29日", choiceC: "8月31日", choiceD: "12月31日", answer: 3))
            
            list.append(Question(image: "Screenshot DecCalendar", questionText:"NexCalendar中第二日個延長日是? (假設該年為閏年)", choiceA: "1月1日", choiceB: "2月29日", choiceC: "8月31日", choiceD: "12月31日", answer: 4))
            
            list.append(Question(image: "benefits_chin", questionText:"使用NexCalendar有什麼好處?", choiceA: "簡單及持續", choiceB: "容易記憶", choiceC: "具經濟效益及有效率", choiceD: "A, B & C", answer: 4))
            
            list.append(Question(image: "thumbsup", questionText:"你會不會使用NexCalendar?", choiceA: "會", choiceB: "當然會", choiceC: "一定會", choiceD: "絕對會", answer: 1))
        }
        
    }
}
