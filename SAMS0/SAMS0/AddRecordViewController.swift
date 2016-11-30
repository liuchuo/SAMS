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
        
        successLabel.text = "您的记录已成功添加^_^"
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
