//
//  ViewController.swift
//  Collection View
//
//  Created by Jorge Gallardo on 8/15/15.
//  Copyright © 2015 Jorge Gallardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let jenna = ["Baby Jenna", "Clean Jenna", "Oily Jenna"]
    let imageArray = [UIImage(named: "jenna1"), UIImage(named: "jenna2"), UIImage(named: "jenna3")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.jenna.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // create cell object that is a custom CollectionViewCell for each cell that we're going to be creating in our collection view
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        cell.imageView.image =  self.imageArray[indexPath.row]
        cell.titleLabel.text = self.jenna[indexPath.row]
        return cell
    }
    
    // when someone clicks on one of the cells, we want to load the new view controller
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showImage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showImage" {
            
            // get number of items selected in the collection view
            let indexPaths = self.collectionView.indexPathsForSelectedItems()!
            
            // get the first item of those items in the array and set that as the indexPath
            let indexPath = indexPaths[0] as NSIndexPath
            
            // get destinationViewController and cast it as the newViewController
            let vc = segue.destinationViewController as! NewViewController
            
            // set image and title of our new view controller to whatever item was selected
            vc.image = self.imageArray[indexPath.row]!
            vc.title = self.jenna[indexPath.row]
        }
    }
}