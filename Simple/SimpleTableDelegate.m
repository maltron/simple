//
//  SimpleTableDelegate.m
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SimpleTableDelegate.h"

@implementation SimpleTableDelegate
@synthesize dialog = _dialog;

-(id)initWithDialog:(SDialog *)dialog {
    self = [super init];
    if(self) {
        self.dialog = dialog;
    }
    
    return self;
}


@end
