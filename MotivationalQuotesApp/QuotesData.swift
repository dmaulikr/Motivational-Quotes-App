//
//  QuotesData.swift
//  MotivationalQuotesApp
//
//  Created by meMac on 5/12/16.
//  Copyright © 2016 vi. All rights reserved.
//

import Foundation
import UIKit

class QuotesData
{
    var currentIndex: Int = 0
    
    let quotesArray = ["If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
                       "No matter how small you start, start something that matters.",
                       "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."]
    
    let authorImageNamesArray: [String] = ["thumb_steve", "thumb_brendon", "thumb_theodore"]
    let authorLabelNamesArray: [String] = ["Steve Jobs", "Brendon Burchard", "Theodore Roosevelt"]
    
    
    func getQuote() -> String
    {
        if currentIndex == (quotesArray.count - 1)
        {
            currentIndex = 0
            print("quote \(currentIndex)")
        }
        else
        {
            currentIndex += 1
            print("quote \(currentIndex)")
        }
        return quotesArray[currentIndex]
    }
    
    
    
    
    func getAuthorImageName() -> String
    {
        if currentIndex == (authorImageNamesArray.count - 1)
        {
            currentIndex = 0
            print("Image \(currentIndex)")
        }
        else
        {
            currentIndex += 1
            print("Image \(currentIndex)")
        }
        return authorImageNamesArray[currentIndex]
    }
    
    
    func getAuthorName() -> String {
        if currentIndex == (authorLabelNamesArray.count - 1)
        {
            currentIndex = 0
            print("label \(currentIndex)")
        }
        else
        {
            currentIndex += 1
            print("label \(currentIndex)")
        }
        return authorLabelNamesArray[currentIndex]
    }
    
    func helper() {
        
    }
    
}

