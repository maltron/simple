//
//  SimpleTable.m
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SimpleTable.h"
#import "SDialog.h"
#import "SimpleTableDelegate.h"
#import "SimpleDataSource.h"

@interface SimpleTable()
@property (nonatomic, strong) id<UITableViewDataSource> dataSource;
@property (nonatomic, strong) id<UITableViewDelegate> tableDelegate;

@end

@implementation SimpleTable
@synthesize dialog = _dialog;
@synthesize dataSource = _dataSource;
@synthesize tableDelegate = _tableDelegate;

-(id)initWithDialog:(SDialog *)dialog {
    self = [super initWithFrame:CGRectZero style:[dialog isGrouped] ? UITableViewStyleGrouped : UITableViewStylePlain];
    if(self) {
        self.dialog = dialog;
        
        // Needed for Auto Layout
        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        _dataSource = [[SimpleDataSource alloc] initWithDialog:dialog];
        [self setDataSource:_dataSource];
        
        _tableDelegate = [[SimpleTableDelegate alloc] initWithDialog:dialog];
        [self setTableDelegate:_tableDelegate];
    }
    
    return self;
}

@end
