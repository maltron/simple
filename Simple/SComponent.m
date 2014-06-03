//
//  SComponent.m
//  Simple
//
//  Created by Mauricio Leal on 6/1/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SComponent.h"

@implementation SComponent
@synthesize key = _key;
@synthesize enabled = _enabled;
@synthesize hidden = _hidden;

-(id)init {
    self = [self initWithKey:nil]; // It will generate a UUID
    if(self) {
        self.hidden = NO;
        self.enabled = YES;
    }
    
    return self;
}

-(id)initWithKey:(NSString *)key {
    self = [super init];
    if(self) {
        self.key = key == nil ? [[NSUUID UUID] UUIDString] : key;
    }
    
    return self;
}

-(UITableViewCell *)getCellForTableView:(UITableView *)tableView {
    UITableViewCell *cell = [self getOrCreateEmptyCell:tableView];
    
    cell.textLabel.text = nil;
    cell.detailTextLabel.text = nil;
    cell.imageView.image = nil;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.showsReorderControl = YES;
    cell.accessoryView = nil;
    
    return cell;
}


-(UITableViewCell *)getOrCreateEmptyCell:(UITableView *)tableView {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self generateIdentifier]];
    if(!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:[self generateIdentifier]];
    
    return cell;
}

-(NSString *)generateIdentifier {
    return [NSString stringWithFormat:@"SimpleElementCell%@%@", self.key, self.class];
}
                
                
// DEBUG Purporses
-(NSString *)description {
    return [self generateIdentifier];
}
    

@end
