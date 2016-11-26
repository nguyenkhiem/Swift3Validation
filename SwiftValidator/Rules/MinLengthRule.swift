//
//  LengthRule.swift
//  Validator
//
//  Created by Jeff Potter on 3/6/15.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

/**
 `MinLengthRule` is a subclass of Rule that defines how minimum character length is validated.
 */
open class MinLengthRule: Rule {
    /// Default minimum character length.
    fileprivate var DEFAULT_LENGTH: Int = 3
    /// Default error message to be displayed if validation fails.
    fileprivate var message : String = "Must be at least 3 characters long"
    
    /// - returns: An initialized `MinLengthRule` object, or nil if an object could not be created for some reason that would not result in an exception.
    public init(){}
    
    /**
     Initializes a `MaxLengthRule` object that is to validate the length of the text of a text field.
     
     - parameter length: Minimum character length.
     - parameter message: String of error message.
     - returns: An initialized `MinLengthRule` object, or nil if an object could not be created for some reason that would not result in an exception.
     */
    public init(length: Int, message : String = "Must be at least %ld characters long"){
        self.DEFAULT_LENGTH = length
        self.message = NSString(format: message as NSString, self.DEFAULT_LENGTH) as String
    }
    
    /**
     Validates a text field.
     - parameter value: String to checked for validation.
     - returns: A boolean value. True if validation is successful; False if validation fails.
     */
    open func validate(_ value: String) -> Bool {
        return value.characters.count >= DEFAULT_LENGTH
    }
    
    /**
     Displays error message when text field has failed validation.
     
     - returns: String of error message.
     */
    open func errorMessage() -> String {
        return message
    }
}
