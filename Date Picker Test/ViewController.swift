//
//  ViewController.swift
//  Date Picker Test
//
//  Created by D7703_25 on 2018. 4. 12..
//  Copyright © 2018년 김재현. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblP: UILabel!
    @IBOutlet weak var datP: UIDatePicker!
    var myTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            self.updateTimer()
        })
    }
    func updateTimer() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        lblC.text = formatter.string(from: date)
        if lblP.text == lblC.text {
            view.backgroundColor = UIColor.red
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func actionPicker(_ sender: Any) {
        print("change Date Picker")
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        lblP.text = formatter.string(from: datP.date)
    }
    
    @IBAction func reset(_ sender: Any) {
    view.backgroundColor = UIColor.white}
}
    
    