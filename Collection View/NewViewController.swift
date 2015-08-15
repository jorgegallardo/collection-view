//
//  NewViewController.swift
//  Collection View
//
//  Created by Jorge Gallardo on 8/15/15.
//  Copyright © 2015 Jorge Gallardo. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var image = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.imageView.image = self.image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
