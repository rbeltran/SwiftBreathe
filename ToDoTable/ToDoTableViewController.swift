//
//  ToDoTableViewController.swift
//  ToDoTable
//
//  Created by Vinod Ralh on 1/2/15.
//  Copyright (c) 2015 Vinod Ralh. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDoListActive = [ToDo]()
    var toDoListCompleted = [ToDo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var newToDo = ToDo(shortName: "iOS course", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Painting house", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Termite inspection", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Police statement", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Cook dinner", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Painting fence", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Trim hedge", completed: "N", startDate: "10/12/2014", endDate: "",   notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Grout enterance way", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Exercise", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Get seedlings", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        
        newToDo = ToDo(shortName: "Complete Marketing Essentials course", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Tidy study", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Go to Tip", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Redo broken tiles", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Daily walk", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        newToDo = ToDo(shortName: "Research Lilly Pilly hedge", completed: "N", startDate: "10/12/2014", endDate: "", notes: "")
        toDoListActive.append(newToDo)
        
        
       // newToDo = ToDo(shortName: "Mow lawn", description: "iOS course", priority: "H", completed: "Y", startDate: "10/12/2014", endDate: "", notes: "")
       // toDoListCompleted.append(newToDo)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        if section == 0 {
            return toDoListActive.count
        }
            else {
            return toDoListCompleted.count
        }
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Active"
        }
        else {
            return "Completed"
        }
            
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("toDoCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        var priorityIcon: String
        var currentToDo: ToDo
        
        if indexPath.section == 0 {
            currentToDo = toDoListActive[indexPath.row]
        }
            else {
            currentToDo = toDoListCompleted[indexPath.row]
        }
        
        cell.textLabel?.text = currentToDo.shortName
//        cell.detailTextLabel?.text = currentToDo.description
        
        
        // Retrieve an image
        
//        switch currentToDo.priority
//            {
//        case "H":
//            priorityIcon = "HighPriorityIcon"
//        case "M":
//            priorityIcon = "MediumPriorityIcon"
//        case "L":
//            priorityIcon = "LowPriorityIcon"
//        default:
//            priorityIcon = "NoPriorityIcon"
//        }
        
//        var myImage = UIImage(named: priorityIcon)
//        cell.imageView?.image = myImage
        
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    
    
        var secondScene = segue.destinationViewController as InfoViewController
        var index = self.tableView.indexPathForSelectedRow()
        
            if index!.section == 0 {
            let selectedToDo = toDoListActive[index!.row]
            secondScene.currentToDo = selectedToDo
        }
        else {
            let selectedToDo = toDoListActive[index!.row]
            secondScene.currentToDo = selectedToDo
            
        }

    }
}
