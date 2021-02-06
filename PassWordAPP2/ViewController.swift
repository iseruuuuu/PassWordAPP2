//
//  ViewController.swift
//  PassWordAPP2
//
//  Created by 井関竜太郎 on 2021/02/06.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,SetOKDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var person = Person()
    var personArray = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TableViewに表示するセルの数->セルの数を決める。
        return personArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //セクションの数を決める。
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cellを構築する際に呼ばれるメソット
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" ,for: indexPath)
        cell.selectionStyle = .blue
        
        let titleLabel = cell.contentView.viewWithTag(1) as! UILabel
        titleLabel.text? = personArray[indexPath.row].title
        
        let userNameLabel = cell.contentView.viewWithTag(2) as! UILabel
        userNameLabel.text? = personArray[indexPath.row].userName
        
        let passwordLabel = cell.contentView.viewWithTag(3) as! UILabel
        passwordLabel.text? = personArray[indexPath.row].passWord
        //passwordLabel.text = "********"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //セルの高さを決めるメソッド→　view.frame.size.heightは、機種によって合わせてくれる。
        return view.frame.size.height/6
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //セルがタップされた時に呼ばれるメソット→ 今回は、表示される。→画面遷移
        
        //     let next = storyboard?.instantiateViewController(identifier: "next") as! ListViewController
        //   let nextu = storyboard?.instantiateViewController(identifier: "nextu") as! ListViewController
        
        let next = storyboard?.instantiateViewController(identifier: "next") as! ListViewController
        
        next.stringgg = personArray[indexPath.row].title
        next.stringgg2 = personArray[indexPath.row].userName
        next.stringgg3 = personArray[indexPath.row].passWord
        
        
        navigationController?.pushViewController(next, animated: true)
        
        //  print(personArray[indexPath.row].title)
        //print(personArray[indexPath.row].userName)
        //print(personArray[indexPath.row].passWord)
        // print("おstartお")
        
        //タップされたものを載せる
        //    performSegue(withIdentifier: "next", sender: nil)
        
        //     navigationController?.pushViewController(nextVC, animated: true)
        
        
        
    }
    
    
    func setOK(check: Person) {
        personArray.append(check)
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next2" {
            let nextVCC = segue.destination as! addViewController
            nextVCC.setOKDelegate = self
        }
    }
    
    @IBAction func add(_ sender: Any) {
        performSegue(withIdentifier: "next2", sender: nil)
    }
    
    
}

