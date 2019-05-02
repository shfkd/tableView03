//
//  ViewController.swift
//  tableView03
//
//  Created by D7703_07 on 2019. 5. 2..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //섹션안에 로우를 몇개 넣을 것인지 정한다.
        //UITableViewDataSource 메소드
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //셀을 만든다.
        //
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        let sec = indexPath.section
        
        cell.textLabel?.text = "Section: " + String(sec)
        cell.detailTextLabel?.text = "Row" + String(row)
        
        count += 1
        print("cell...")
        
        return cell
    }
    
    //UITableViewDelegate 메소드 오버라이딩
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100.0
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Row = \(indexPath.row)" + " Section = \(indexPath.row)")
    }



}

