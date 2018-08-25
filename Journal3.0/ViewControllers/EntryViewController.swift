//
//  EntryViewController.swift
//  Journal3.0
//
//  Created by Kamil Wrobel on 8/24/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    //MARK: - Actions
    @IBAction func clearButtonTapped(_ sender: Any) {
        // clear text fields
        titleTextField.text = ""
        textView.text = ""
        
        
    }
    
  
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        // need to make sure were not working with empty fields
        
        // need to check if were editing or creating new entry
        
        
        
        
        
        // need to save to persistance
        
        // need to pop the view
        
        
        
    }
    
    

}
