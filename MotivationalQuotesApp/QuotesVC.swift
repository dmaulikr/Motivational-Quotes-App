//
//  QuotesVC.swift
//  MotivationalQuotesApp
//
//  Created by meMac on 5/12/16.
//  Copyright © 2016 vi. All rights reserved.
//

import UIKit

class QuotesVC: UIViewController
{
    let newQuote: QuotesData = QuotesData()
    let newIm: QuotesData = QuotesData()
    let newName: QuotesData = QuotesData()
    let starterQuote = QuotesData()
    let starterName = QuotesData()
    
    
    // Outlets
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var quotesLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let starterAuthorImage = UIImage(named: "thumb_steve")
        authorImage.image = starterAuthorImage
        
        let openName = starterName.authorLabelNamesArray[starterName.currentIndex]
        authorNameLabel.text = openName
        
        let openQ = starterQuote.quotesArray[starterQuote.currentIndex]
        quotesLabel.text = openQ
        
        
    }
    
    // Actions
    @IBAction func inspireMeButtonTapped(_ sender: UIButton) {
        let quote = newQuote.getQuote()
        quotesLabel.text = quote
        
        let authorName = newName.getAuthorName()
        authorNameLabel.text = authorName

        let authorImName = newIm.getAuthorImageName()
        authorImage.image = UIImage(named: authorImName)
    }
    
    
    
}
