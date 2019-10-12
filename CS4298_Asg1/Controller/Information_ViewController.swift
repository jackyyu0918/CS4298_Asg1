//
//  Information_ViewController.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 12/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import UIKit

struct cellData{
    var opened = Bool()
    var title = String()
    var sectionData = [String]()
    
}

class Information_ViewController: UITableViewController {
    
   var tableViewData = [cellData]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       tableView.rowHeight = UITableView.automaticDimension
       tableView.estimatedRowHeight = 600
        
     tableViewData = [cellData(opened: false, title: "1.interesting history of calendars", sectionData: ["The first Roman calendar was created by Romulus and it had 10 months in a year."]),
                      cellData(opened: false, title: "Title2", sectionData: ["Cell1","Cell2","Cell3"]),
                      cellData(opened: false, title: "Title3", sectionData: ["Cell1","Cell2","Cell3"]),
                      cellData(opened: false, title: "Title4", sectionData: ["Cell1","Cell2","Cell3"])]
        
        //cellData(opened: false, title: "Title4", sectionData: ["Cell1","Cell2","Cell3"])
    }
    
   
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened == true {
            return tableViewData[section].sectionData.count + 1
        }else{
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let dataIndex = indexPath.row - 1
        if indexPath.row == 0{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell")else{return UITableViewCell()}
            cell.textLabel?.text = tableViewData[indexPath.section].title
            return cell
        }else{
            //use different cell identifier if
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell")else{return UITableViewCell()}
            cell.textLabel?.text = tableViewData[indexPath.section].sectionData[dataIndex]
            return cell
            
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableViewData[indexPath.section].opened == true {
        tableViewData[indexPath.section].opened = false
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)//play around with this
        }else{
        tableViewData[indexPath.section].opened = true
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)//play around with this
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
    }
    
}
