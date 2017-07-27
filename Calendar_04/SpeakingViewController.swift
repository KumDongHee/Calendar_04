//
//  CalendarViewController.swift
//  Calendar_04
//
//  Created by jangsik han on 2017. 7. 27..
//  Copyright © 2017년 Design Goorm. All rights reserved.
//

import UIKit

class SpeakingViewController: UIViewController {

    @IBOutlet weak var DayContainerView: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCalendarTable()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    func createCalendarTable() {
        for n in 1...31 {
            
            let DayOfCalendarImageView = UIImageView(frame: CGRect(
                            x: CGFloat((n-1) % 7) * DayContainerView.frame.size.width/7,
                            y: CGFloat((n-1) / 7) * DayContainerView.frame.size.height/6,
                            width: DayContainerView.frame.size.width/7,
                            height: DayContainerView.frame.size.height/6)
            )
            DayOfCalendarImageView.backgroundColor = UIColor.init(red: CGFloat(Float(n)/Float(31)), green: CGFloat(Float(n)/Float(31)), blue: CGFloat(Float(n)/Float(31)), alpha: 1.0)
            DayOfCalendarImageView.image = UIImage.init(named: "11_calendar_01")
            if ( day == 선택한 day) {
                빨간동그라미
            }else {
                일반
            }
            DayContainerView.addSubview(DayOfCalendarImageView)
            
        }
    }
    
    
    
    
    
}
