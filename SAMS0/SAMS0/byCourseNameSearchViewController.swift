//
//  byCourseNameSearchViewController.swift
//  SAMS0
//
//  Created by ChenXin on 2016/11/23.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class byCourseNameSearchViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SearchByCourseNameBtn(_ sender: Any) {
        let SearchCourseName : String = searchTextField.text!
        let courseNameResultVC = storyboard?.instantiateViewController(withIdentifier: "ResultByCourseName") as! ResultByCourseNameTableViewController
        courseNameResultVC.SearchCourseName = SearchCourseName
        self.navigationController?.pushViewController(courseNameResultVC, animated: true)
        
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

}
