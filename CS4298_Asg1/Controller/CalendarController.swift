     //
     //  CalendarController.swift
     //  CS4298_Asg1
     //
     //  Created by CHAN Yat Chau on 14/10/2019.
     //  Copyright © 2019 YU Ka Kit. All rights reserved.
     //
     
     import UIKit
     
     class CalendarController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
        
        @IBOutlet weak var calendar: UICollectionView!
        @IBOutlet weak var timeLabel: UILabel!
        
        var currentDay = Calendar.current.component(.day, from: Date())
        var currentMonth = Calendar.current.component(.month, from: Date())
        var currentYear = Calendar.current.component(.year, from: Date())
        
        var calendarDay = 0
        var calendarMonth = Calendar.current.component(.month, from: Date())
        var calendarYear = Calendar.current.component(.year, from: Date())
        var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        
        var calLang = CalendarLanguage()
        
        override func  viewDidLoad() {
            super.viewDidLoad()
            setTextByLanguage();
            setUp()
        }
        
        @IBOutlet weak var Mon: UILabel!
        @IBOutlet weak var Tue: UILabel!
        @IBOutlet weak var Wed: UILabel!
        @IBOutlet weak var Thu: UILabel!
        @IBOutlet weak var Fri: UILabel!
        @IBOutlet weak var Sat: UILabel!
        @IBOutlet weak var Sun: UILabel!
        
        @IBOutlet weak var Day: UILabel!
        @IBOutlet weak var Month: UILabel!
        @IBOutlet weak var Year: UILabel!
        
        @IBOutlet weak var Goto: UIButton!
        
        func setTextByLanguage(){
            Mon.text = calLang.Weekdays[0]
            Tue.text = calLang.Weekdays[1]  
            Wed.text = calLang.Weekdays[2]
            Thu.text = calLang.Weekdays[3]
            Fri.text = calLang.Weekdays[4]
            Sat.text = calLang.Weekdays[5]
            Sun.text = calLang.Weekdays[6]
            
            Year.text = calLang.Text[0]
            Month.text = calLang.Text[1]
            Day.text = calLang.Text[2]
            
            Goto.setTitle(calLang.Button[0], for: .normal)
            
            months = calLang.Months
        }
        
        @IBAction func nextMonth(_ sender: Any) {
            calendarMonth += 1
            if calendarMonth == 13{
                calendarMonth = 1
                calendarYear += 1
            }
            setUp()
        }
        
        @IBAction func lastMonth(_ sender: Any) {
            calendarMonth -= 1
            if calendarMonth == 0{
                calendarMonth = 12
                calendarYear -= 1
            }
            setUp()
        }
        
        @IBOutlet weak var targetYear: UITextField!
        @IBOutlet weak var targetMonth: UITextField!
        @IBOutlet weak var targetDay: UITextField!
        
        @IBAction func goToDate(_ sender: Any) {
            let intTargetDay = Int(targetDay.text ?? "\(currentDay)") ?? currentDay
            let intTargetMonth = Int(targetMonth.text ?? "\(currentMonth)") ?? currentMonth
            let intTargetYear = Int(targetYear.text ?? "\(currentYear)") ?? currentYear
            
            calendarDay = intTargetDay
            calendarMonth = intTargetMonth
            calendarYear = intTargetYear

            setUp()
        }
        
        @IBAction func currentDate(_ sender: Any) {
            calendarYear = Calendar.current.component(.year, from: Date())
            calendarMonth = Calendar.current.component(.month, from: Date())
            setUp()
        }
        
        
        var isLeapYear:Bool{
            return calendarYear%4 == 0
        }
        
        var dayToEnd:Int{
            var range = 0
            
            switch calendarMonth {
            case 1,3,5,7,8,10:
                range = 31
            case 4,6,9,11:
                range = 30
            case 2:
                range = 29
            case 12:
                range = isLeapYear ? 31 : 30
            default:
                range = 0
            }
            
            return range
        }
        
        var dayToStart:Int{
            var dayToAdd = 0
            
            switch calendarMonth {
            case 1,4,7,10:
                dayToAdd = 0
            case 5:
                dayToAdd = 2
            case 2,8,11:
                dayToAdd = 3
            case 3:
                dayToAdd = 4
            case 6,9,12:
                dayToAdd = 5
            default:
                dayToAdd = 0
            }
            return dayToAdd
        }
        
        func setUp(){
            timeLabel.text = months[calendarMonth - 1] + " \(calendarYear)"
            calendar.reloadData()
            
            print(calendarMonth)
            print("dayToStart \(dayToStart)")
            print("dayToEnd \(dayToEnd)")
        }
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 42
        }
        
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            cell.backgroundColor =  UIColor(hexFromString: "007AFF")
            if let textLabel = cell.contentView.subviews[0] as? UILabel{
                
                if (indexPath.row < dayToStart){
                    textLabel.text = ""
                    textLabel.backgroundColor = UIColor.darkGray
                }else if( indexPath.row - dayToStart < dayToEnd){
                    textLabel.text = "\(indexPath.row - dayToStart + 1)"
                    textLabel.backgroundColor = UIColor(hexFromString: "51B3FF")
                }
                else{
                    if(isLeapYear && calendarMonth == 12 && indexPath.row == 41){
                        textLabel.text = "31"
                        textLabel.backgroundColor = UIColor.lightGray
                    }else{
                        textLabel.text = ""
                        textLabel.backgroundColor = UIColor.darkGray
                    }
                }
                
                //Paint the choosen day
                if(calendarDay != 0 && indexPath.row -   dayToStart + 1  == calendarDay){
                    textLabel.backgroundColor = UIColor.orange
                }
                //Paint long staturday
                if(calendarMonth == 9 && indexPath.row - dayToStart + 1  == 1){
                    textLabel.backgroundColor = UIColor.blue
                }
                
                //Paint today in green
                if(calendarYear == currentYear && calendarMonth == currentMonth && indexPath.row + dayToStart + 1  == currentDay){
                    textLabel.backgroundColor = UIColor.green
                }
            }
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = collectionView.frame.width/7
            return CGSize(width: width, height: 40)
        }
        
        override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()
            calendar.collectionViewLayout.invalidateLayout()
            calendar.reloadData()
        }
        
        override func becomeFirstResponder() -> Bool {
            return true
        }
        
        override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if motion == .motionShake{
                currentDate(self)
            }
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            targetDay.resignFirstResponder()
            targetMonth.resignFirstResponder()
            targetYear.resignFirstResponder()
        }
        
     }
     
     extension UIColor {
        convenience init(hexFromString:String, alpha:CGFloat = 1.0) {
            var cString:String = hexFromString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
            var rgbValue:UInt32 = 10066329 //color #999999 if string has wrong format
            
            if (cString.hasPrefix("#")) {
                cString.remove(at: cString.startIndex)
            }
            
            if ((cString.count) == 6) {
                Scanner(string: cString).scanHexInt32(&rgbValue)
            }
            
            self.init(
                red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                alpha: alpha
            )
        }
     }
