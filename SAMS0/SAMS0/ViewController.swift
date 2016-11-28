//
//  ViewController.swift
//  SAMS0
//
//  Created by ChenXin on 2016/11/23.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //launchscreen停留1秒
        Thread.sleep(forTimeInterval: 1.0)
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let row:AnyObject = NSEntityDescription.insertNewObject(forEntityName: "Students", into: context)
        row.setValue("20142344001", forKey: "sno")
        row.setValue("王明", forKey: "sname")
        row.setValue(81, forKey: "softwareengineer")
        row.setValue(90, forKey: "pe")
        row.setValue(100, forKey: "math")
        row.setValue(85, forKey: "java")
        row.setValue(87, forKey: "history")
        row.setValue(88, forKey: "english")
        row.setValue(95, forKey: "datastructure")
        row.setValue(96, forKey: "os")
        
//        do {
//            try context.save()
//        }catch {
//            
//        }
        
        row.setValue("20142344002", forKey: "sno")
        row.setValue("李豪", forKey: "sname")
        row.setValue(100, forKey: "softwareengineer")
        row.setValue(68, forKey: "pe")
        row.setValue(100, forKey: "math")
        row.setValue(77, forKey: "java")
        row.setValue(84, forKey: "history")
        row.setValue(88, forKey: "english")
        row.setValue(90, forKey: "datastructure")
        row.setValue(95, forKey: "os")
//        do {
//            try context.save()
//        }catch {
//            
//        }
        
        row.setValue("20142344003", forKey: "sno")
        row.setValue("杨丽", forKey: "sname")
        row.setValue(98, forKey: "softwareengineer")
        row.setValue(54, forKey: "pe")
        row.setValue(74, forKey: "math")
        row.setValue(90, forKey: "java")
        row.setValue(56, forKey: "history")
        row.setValue(80, forKey: "english")
        row.setValue(94, forKey: "datastructure")
        row.setValue(91, forKey: "os")
//        do {
//            try context.save()
//        }catch {
//            
//        }
        row.setValue("20142344004", forKey: "sno")
        row.setValue("杨帆", forKey: "sname")
        row.setValue(65, forKey: "os")
//        do {
//            try context.save()
//        }catch {
//            
//        }
        
        row.setValue("20142344005", forKey: "sno")
        row.setValue("李星", forKey: "sname")
        row.setValue(84, forKey: "os")
//        do {
//            try context.save()
//        }catch {
//            
//        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

