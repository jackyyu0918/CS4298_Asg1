//
//  CalendarLanguage.swift
//  CS4298_Asg1
//
//  Created by CHAN Yat Chau on 18/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//


import Foundation

class CalendarLanguage{
    var Months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    var Weekdays = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
    
    
    init() {
        switch Language_Control.language {
            
        case 0:
            Months=["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
            Weekdays=["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
            
        case 1:
            Months=["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"],
            Weekdays=["一","二","三","四","五","六","日"]
            
            
        default:
            content = [
                "Months" :["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                "Weekdays":["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
            ]
        }
    }
    
    
}
