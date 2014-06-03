//
//  SimpleController.h
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SDialog;

@interface SimpleController : UIViewController
@property (nonatomic, strong) SDialog *dialog;

-(id)initWithDialog:(SDialog *)dialog;

@end
