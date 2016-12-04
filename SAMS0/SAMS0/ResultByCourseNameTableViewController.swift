//
//  ResultByCourseNameTableViewController.swift
//  SAMS0
//
//  Created by ChenXin on 2016/11/23.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class ResultByCourseNameTableViewController: UITableViewController {
    // 数据源
    var snoArr : Array<String> = []
    var snameArr : Array<String> = []
    var scoreArr : Array<String> = []
    var SearchCourseName : String = ""
    
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
        let querySQL = "SELECT sno, sname, os, dataStructure, english, history, java, math, pe, softwareEngineer FROM 't_stuInfo';"
        let resultDictArr = SQLManager.shareInstance().queryDataBase(querySQL: querySQL)
        snoArr = []
        snameArr = []
        scoreArr = []
        for dict in resultDictArr! {
            snoArr.append(dict["sno"]! as! String)
            snameArr.append(dict["sname"]! as! String)
            scoreArr.append(dict["\(SearchCourseName)"]! as! String)
        }
        
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
        return snoArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)

        // Configure the cell...
        let snoLabel = cell.viewWithTag(103) as! UILabel
        snoLabel.text = snoArr[indexPath.row]
        
        let snameLabel = cell.viewWithTag(104) as! UILabel
        snameLabel.text = snameArr[indexPath.row]
        
        let scoreLabel = cell.viewWithTag(105) as! UILabel
        scoreLabel.text = scoreArr[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let editByCourseName = storyboard?.instantiateViewController(withIdentifier: "editByCourseName") as! EditScoreByCourseNameViewController
        editByCourseName.sno = snoArr[indexPath.row]
        editByCourseName.courseName = SearchCourseName
        present(editByCourseName, animated: true, completion: nil)
        
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let sno = snoArr[indexPath.row]
            let deleteSQL = "DELETE FROM 't_StuInfo' WHERE sno = '\(sno)';"
            if SQLManager.shareInstance().execSQL(SQL: deleteSQL) == true {
                print("删除成功！~")
                loadTableViewData()
            }
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
