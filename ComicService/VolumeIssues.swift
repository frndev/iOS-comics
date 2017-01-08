//
//  VolumeIssues.swift
//  ComicList
//
//  Created by fran on 7/1/17.
//  Copyright © 2017 Guillermo Gonzalez. All rights reserved.
//

import Foundation

/// A comic issue
public struct Issue {
    
    /// Issue title
    public let title: String
    
    /// Cover image URL
    public let coverURL: URL?
}

extension Issue: JSONDecodable {
    
    public init?(dictionary: JSONDictionary) {
        
        var dataURL = (dictionary["image"] as! JSONDictionary)
        var dataTitle = (dictionary["volume"] as! JSONDictionary)
        
        self.title = dataTitle["name"] as! String
        self.coverURL = URL(string:dataURL["medium_url"] as! String)
        
    }
    
    
}
