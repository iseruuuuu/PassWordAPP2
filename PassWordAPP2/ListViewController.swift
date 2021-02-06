//
//  ListViewController.swift
//  PassWordAPP2
//
//  Created by 井関竜太郎 on 2021/02/06.
//

import UIKit

class ListViewController: UIViewController,SetOKDelegate {
    
    //String型で文字列→viewControllerの追加したものを文字列に置く。
    var stringgg = String()
    var stringgg2 = String()
    var stringgg3 = String()
    var person = Person()
    
    //personのcell番号を入れるために必要。→ それぞれの番号に代入される。
    var personArray = [Person]()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setOK(check: Person) {
        personArray.append(check)
        //   titleLabel.text = stringgg
    }
    
    
    
    
}
