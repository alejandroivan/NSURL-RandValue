//
//  NSURL+RandValueURL.h
//
//  Created by Alejandro Iván on 09-03-18.
//  Copyright © 2018 Alejandro Iván Melo Domínguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (RandValueURL)

/**
 Returns a NSURL object with a rand query parameter.
 This "rand" query parameter is helpful to avoid caching.
 
 @return A new NSURL with the rand=<random_integer> appended to the query parameters.
 */
- (NSURL *)randomizedURL;

@end
