//
//  ViewController.swift
//  Category
//
//  Created by Veena on 11/8/15.
//  Copyright © 2015 Veena. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

 
    
    @IBOutlet weak var departmentCollection: UICollectionView!
    
    @IBOutlet weak var categoryCollection: UICollectionView!
    
    
    var departments: [String]!
    
    let department = ["Fresh Produce", "Fruits", "Favourites", "Bakery"]
    
    var departmentimages = UIImage(named: "dept1")
    
    var categories:[String]!
    var category = ["Beets","Vegetables"," Kale","Beets","Soups", "Cakes","Vegetables"," Kale","Beets","Soups"]
    
    var categoryimages = UIImage(named: "catgrid")
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        departmentCollection.delegate = self
        departmentCollection.dataSource = self
        
        departments = department
        
        categoryCollection.delegate = self
        categoryCollection.dataSource = self
        
        categories = category
        
        
        // Do any additional setup after loading the view, typically from a ni
        
        
        //        let url = NSURL(string: "http://api.walmartlabs.com/v1/search?query=cereal&format=json&categoryId=976759&apiKey=n628bkshh6zrqasgj53eyzsd")!
        //
        //        let request = NSURLRequest(URL: url)
        //
        //
        //        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response: NSURLResponse?, data: NSData?, error: NSError?) -> Void in
        //
        //            let json = try! NSJSONSerialization.JSONObjectWithData(data!, options: [])
        //
        //            self.products = json["items"] as! [NSdictionary]
        //
        //            print(json)
        
        //        
        //        }
    }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    
    {
        if (collectionView == self.departmentCollection)
        {
        return department.count
        }
        
        return category.count
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if (collectionView == self.departmentCollection)
        {
        let cell = departmentCollection.dequeueReusableCellWithReuseIdentifier("departmentViewCell", forIndexPath: indexPath) as! departmentViewCell
       
        cell.departmentLabel?.text = department[indexPath.row]
        
        cell.departmentImage.image = departmentimages
            
        
        
        return cell
        }
        else
        {
        let cell = categoryCollection.dequeueReusableCellWithReuseIdentifier("categoryViewCell", forIndexPath: indexPath) as! categoryViewCell
            
        cell.categoryLabel?.text = category[indexPath.row]
        
        cell.categoryImage.image = categoryimages
            
        return cell
        }
    }
    
    
    
}

