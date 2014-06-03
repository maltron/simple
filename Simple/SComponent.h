//
//  SComponent.h
//  Simple
//
//  Created by Mauricio Leal on 6/1/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * SComponent
 * An element object maps one-to-one map to UITableViewCell, although it includes more funcionality, like being able to read values from the cells and having multiple types. Simple provides many different built-in element types, like the ButtonElement and the EntryElement, but you can also create your custom one */

@interface SComponent : NSObject
@property (nonatomic, strong) NSString *key;

@property (nonatomic, assign, getter = isEnabled) BOOL enabled;
@property (nonatomic, assign, getter = isHidden) BOOL hidden;

-(UITableViewCell *)getCellForTableView:(UITableView *)tableView;
-(UITableViewCell *)getOrCreateEmptyCell:(UITableView *)tableView;

-(id)init;
-(id)initWithKey:(NSString *)key;


@end
