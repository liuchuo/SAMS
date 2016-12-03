//
//  StudentModel.swift
//  SAMS0
//
//  Created by ChenXin on 2016/11/30.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import Foundation
import UIKit

class StudentModel: NSObject {
    var sno: String = ""
    var sname: String = ""
    var os: Int = 0
    var dataStructure: Int = 0
    var english: Int = 0
    var history: Int = 0
    var java: Int = 0
    var math: Int = 0
    var pe: Int = 0
    var sofewareEngineer: Int = 0
    
    init(sno : String, sname : String, os : Int, dataStructure : Int, english : Int, history : Int, java : Int, math : Int, pe : Int, softwareEngineer : Int) {
        self.sno = sno
        self.sname = sname
        self.os = os
        self.dataStructure = dataStructure
        self.english = english
        self.history = history
        self.java = java
        self.math = math
        self.pe = pe
        self.softwareEngineer = softwareEngineer
    }
    
    override init() {
        super.init()
    }
    
}
