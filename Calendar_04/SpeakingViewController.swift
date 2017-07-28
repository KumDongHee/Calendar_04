//
//  CalendarViewController.swift
//  Calendar_04
//
//  Created by jangsik han on 2017. 7. 27..
//  Copyright © 2017년 Design Goorm. All rights reserved.
//

import UIKit
import AVFoundation

class SpeakingViewController: UIViewController {


    @IBOutlet weak var MonthFirstDigit: UIImageView!
    @IBOutlet weak var MonthSecondDigit: UIImageView!
    @IBOutlet weak var YearLabel: UILabel!

    var answerMonth = arc4random_uniform(12) + 1
    var answerDay = arc4random_uniform(31) + 1
    var answerYear = arc4random_uniform(100) + 1920
    var player : AVQueuePlayer?

    var correctAnswerMonth : String!
    var correctAnswerDay : String!
    var correctAnswerYear: String!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        createCalendarTable()
        
        
        
        switch answerMonth {
            case 10 :
                MonthFirstDigit.image = UIImage(named: "calender_num_month_1")
                MonthSecondDigit.image = UIImage(named: "calender_num_month_0")
            case 11 :
                MonthFirstDigit.image = UIImage(named: "calender_num_month_1")
                MonthSecondDigit.image = UIImage(named: "calender_num_month_1")
            case 12 :
                MonthFirstDigit.image = UIImage(named: "calender_num_month_1")
                MonthSecondDigit.image = UIImage(named: "calender_num_month_2")
            default :
                MonthFirstDigit.image = UIImage(named: "calender_num_month_0")
                MonthSecondDigit.image = UIImage(named: "calender_num_month_\(answerMonth)")
        }
        YearLabel.text = String(answerYear)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
//    func createCalendarTable() {
//        for n in 1...31 {
//            
//            let DayOfCalendarImageView = UIImageView(frame: CGRect(
//                            x: CGFloat((n+1) % 7) * DayContainerView.frame.size.width/7,
//                            y: CGFloat((n+1) / 7) * DayContainerView.frame.size.height/5,
//                            width: DayContainerView.frame.size.width/7,
//                            height: DayContainerView.frame.size.height/5)
//            )
////            DayOfCalendarImageView.backgroundColor = UIColor.init(red: CGFloat(Float(n)/Float(31)), green: CGFloat(Float(n)/Float(31)), blue: CGFloat(Float(n)/Float(31)), alpha: 1.0)
    
//            if ( day == 선택한 day) {
//                빨간동그라미
//            }else {
//                일반
//            }
//            DayContainerView.addSubview(DayOfCalendarImageView)
//            DayOfCalendarImageView.image = UIImage(named: "calender_num_day_\(n)")
//        }
//    }
//    
//    func daySelectCircleAnimation() {
//        // answerDay 값을 받아와 해당 Day 번호에 빨간색 서클 애니메이션 구현
//    }
    
    
    
    
    func changeCorrectAnswer () {
        
        switch correctAnswerMonth {
        case "1" :
            correctAnswerMonth = "Jan"
        case "2" :
            correctAnswerMonth = "Feb"
        case "3" :
            correctAnswerMonth = "Mar"
        case "4" :
            correctAnswerMonth = "Apr"
        case "5" :
            correctAnswerMonth = "May"
        case "6" :
            correctAnswerMonth = "Jun"
        case "7" :
            correctAnswerMonth = "Jul"
        case "8" :
            correctAnswerMonth = "Aug"
        case "9" :
            correctAnswerMonth = "Sep"
        case "10" :
            correctAnswerMonth = "Oct"
        case "11" :
            correctAnswerMonth = "Nov"
        case "12" :
            correctAnswerMonth = "Dec"
        default : break
        }
        
        switch correctAnswerDay {
        case "1" :
            correctAnswerDay = "1st,"
        case "2" :
            correctAnswerDay = "2nd,"
        case "3" :
            correctAnswerDay = "3rd,"
        case "21" :
            correctAnswerDay = "21st,"
        case "22" :
            correctAnswerDay = "22nd,"
        case "23" :
            correctAnswerDay = "23rd,"
        case "31" :
            correctAnswerDay = "31st,"
        default :
            correctAnswerDay = "\(answerDay)th,"
        }
    }

    

    
    
}
