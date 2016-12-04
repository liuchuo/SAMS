//
//  EditScoreBySnoViewController.swift
//  SAMS0
//
//  Created by ChenXin on 2016/11/23.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class EditScoreBySnoViewController: UIViewController {

    @IBOutlet weak var editTextField: UITextField!
    @IBOutlet weak var successLabel: UILabel!
    
    var sno : String = ""
    var courseName : String = ""
    var score : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func saveBtn(_ sender: Any) {
        //保存修改的分数的代码
        print("\(sno),\(courseName), \(score)")
        let editScore : Int = Int(editTextField.text!)!
        let updateSQL = "UPDATE 't_StuInfo' SET \(courseName) = '\(editScore)' WHERE sno = '\(sno)'"
        if SQLManager.shareInstance().execSQL(SQL: updateSQL) == true {
            print("数据库中分数修改成功")
        }
        successLabel.text = "您的修改已保存^_^"
        
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
