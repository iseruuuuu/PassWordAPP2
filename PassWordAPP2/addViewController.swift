//
//  addViewController.swift
//  PassWordAPP2
//
//  Created by 井関竜太郎 on 2021/02/06.
//

import UIKit

protocol SetOKDelegate {
    func setOK(check:Person)
}

class addViewController: UIViewController,UITextFieldDelegate {
    
    var person  = Person()
    var setOKDelegate:SetOKDelegate?
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.delegate = self
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        //上のnavigationを表示するかどうか。
        navigationController?.isNavigationBarHidden = true
        
        
    }
    
    
    
    @IBAction func addTitle(_ sender: Any) {
        
        //TextFieldの中身を代入する。
        //３つのデータを表示させる。 -> この中身にViewControllerのlabelに載せる。。。
        person.title = titleTextField.text!
        person.userName = userNameTextField.text!
        person.passWord = passwordTextField.text!
        setOKDelegate?.setOK(check: person)
        //閉じる
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
