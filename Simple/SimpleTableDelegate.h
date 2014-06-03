//
//  SimpleTableDelegate.h
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SDialog;

@interface SimpleTableDelegate : NSObject<UITableViewDelegate>
@property (nonatomic, strong) SDialog *dialog;

-(id)initWithDialog:(SDialog *)dialog;

@end
