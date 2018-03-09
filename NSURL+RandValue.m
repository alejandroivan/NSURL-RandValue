//
//  NSURL+RandValueURL.h
//
//  Created by Alejandro Iván on 09-03-18.
//  Copyright © 2018 Alejandro Iván Melo Domínguez. All rights reserved.
//

#import "NSURL+RandValueURL.h"

@implementation NSURL (RandValueURL)

- (NSURL *)randomizedURL {
    NSURLComponents *components                     = [[NSURLComponents alloc] initWithURL:self
                                                                   resolvingAgainstBaseURL:NO];
    NSMutableArray<NSURLQueryItem *> *queryItems    = [NSMutableArray<NSURLQueryItem *> arrayWithArray:components.queryItems];
    
    // Find out if a "rand" query parameter already exists
    BOOL foundRand = NO;
    for ( NSURLQueryItem *item in queryItems ) {
        if ( [item.name isEqualToString:@"rand"] ) {
            foundRand = YES;
            break;
        }
    }
    
    // If no "rand" query parameter exists, add it to the query parameters
    if ( ! foundRand ) {
        uint32_t random         = arc4random();
        NSURLQueryItem *item    = [NSURLQueryItem queryItemWithName:@"rand"
                                                              value:[NSString stringWithFormat:@"%d", random]];
        [queryItems addObject:item];
    }
    
    [components setQueryItems:queryItems.mutableCopy];
    
    return [components URL];
}

@end
