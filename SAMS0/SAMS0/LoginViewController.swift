//
//  LoginViewController.swift
//  SAMS0
//
//  Created by ChenXin on 2016/11/29.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var rememberSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.userName.text = UserDefaults.standard.value(forKey: "UserName") as! String!
        self.password.text = UserDefaults.standard.value(forKey: "Password") as! String!
        self.rememberSwitch.isOn = UserDefaults.standard.bool(forKey: "RememberSwitch") as Bool!

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        UserDefaults.standard.setValue(self.userName.text, forKey: "UserName")
        UserDefaults.standard.setValue(self.password.text, forKey: "Password")
        UserDefaults.standard.set(self.rememberSwitch.isOn, forKey: "RememberSwitch")
        
        UserDefaults.standard.synchronize()
        
        if(self.rememberSwitch.isOn) {
            self.password.text = UserDefaults.standard.value(forKey: "Password") as! String!
        } else {
            UserDefaults.standard.setValue("", forKey: "UserName")
            UserDefaults.standard.setValue("", forKey: "Password")
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
