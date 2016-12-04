//
//  ResultBySnoTableViewController.swift
//  SAMS0
//
//  Created by ChenXin on 2016/11/23.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class ResultBySnoTableViewController: UITableViewController {

    // 数据源
    var stuArr : Array<AnyObject> = []
    var Searchsno : String = ""
    
    // 课程名称
    var courseNameArr : Array<String> = ["学号", "姓名", "操作系统", "数据结构", "英语CE4", "中国近代史", "Java语言程序设计", "高等数学", "大学体育4", "软件工程"]
    var columnNameArr : Array<String> = ["sno", "sname", "os", "dataStructure", "english", "history", "java", "math", "pe", "softwareEngineer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        loadTableViewData()
    }
    override func viewWillAppear(_ animated: Bool) {
        loadTableViewData()
    }
    
    func loadTableViewData() {
        let querySQL = "SELECT sno, sname, os, dataStructure, english, history, java, math, pe, softwareEngineer FROM 't_stuInfo' WHERE sno = '\(Searchsno)';"
        let resultDictArr = SQLManager.shareInstance().queryDataBase(querySQL: querySQL)
        stuArr = []
        for dict in resultDictArr! {
            stuArr.append(dict["sno"]!)
            stuArr.append(dict["sname"]!)
            stuArr.append(dict["os"]!)
            stuArr.append(dict["dataStructure"]!)
            stuArr.append(dict["english"]!)
            stuArr.append(dict["history"]!)
            stuArr.append(dict["java"]!)
            stuArr.append(dict["math"]!)
            stuArr.append(dict["pe"]!)
            stuArr.append(dict["softwareEngineer"]!)
        }
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)

        // Configure the cell...
        let courseNameLabel = cell.viewWithTag(101) as! UILabel
        courseNameLabel.text = courseNameArr[indexPath.row + 2]
        
        let scoreLabel = cell.viewWithTag(102) as! UILabel
        scoreLabel.text = stuArr[indexPath.row + 2] as! String
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let editBySnoVC = storyboard?.instantiateViewController(withIdentifier: "editBySno") as! EditScoreBySnoViewController
        editBySnoVC.sno = stuArr[0] as! String
        editBySnoVC.courseName = columnNameArr[indexPath.row + 2] as! String
        editBySnoVC.score = stuArr[indexPath.row + 2] as! String
        present(editBySnoVC, animated: true, completion: nil)
    
    }
    
  
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
