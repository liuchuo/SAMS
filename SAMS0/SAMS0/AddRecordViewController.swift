//
//  AddRecordViewController.swift
//  SAMS0
//
//  Created by ChenXin on 2016/11/30.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class AddRecordViewController: UIViewController {

    @IBOutlet weak var successLabel: UILabel!
    
    @IBOutlet weak var snoTextField: UITextField!
    @IBOutlet weak var snameTextField: UITextField!
    @IBOutlet weak var osTextField: UITextField!
    @IBOutlet weak var dataStructureTextField: UITextField!
    @IBOutlet weak var englishTextField: UITextField!
    @IBOutlet weak var historyTextField: UITextField!
    @IBOutlet weak var javaTextField: UITextField!
    @IBOutlet weak var mathTextField: UITextField!
    @IBOutlet weak var peTextField: UITextField!
    @IBOutlet weak var softwareEngineerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func addBtn(_ sender: Any) {
        //将记录添加到数据库中的代码
        let sno : String = snoTextField.text!
        let sname : String = snameTextField.text!
        let os : Int = Int(osTextField.text!)!
        let dataStructure : Int = Int(dataStructureTextField.text!)!
        let english : Int = Int(englishTextField.text!)!
        let history : Int = Int(historyTextField.text!)!
        let java : Int = Int(javaTextField.text!)!
        let math : Int = Int(mathTextField.text!)!
        let pe : Int = Int(peTextField.text!)!
        let softwareEngineer : Int = Int(softwareEngineerTextField.text!)!
        print("~~~")
        let insertSQL = "INSERT INTO 't_StuInfo' (sno, sname, os, dataStructure, english, history, java, math, pe, softwareEngineer) VALUES ('\(sno)', '\(sname)', \(os), \(dataStructure), \(english), \(history), \(java), \(math), \(pe), \(softwareEngineer));"
        if SQLManager.shareInstance().execSQL(SQL: insertSQL) == true {
            print("插入数据添加成功")
            successLabel.text = "您的记录已成功添加^_^"
        } else {
            print("添加数据失败。。")
        }
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
