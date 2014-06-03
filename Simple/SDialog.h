//
//  SDialog.h
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SComponent.h"

@class SSection;

@interface SDialog : SComponent
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSMutableArray *sections;
@property (nonatomic, assign, getter = isGrouped) BOOL grouped;

-(id)initWithTitle:(NSString *)title;

-(void)addSection:(SSection *)section;
-(NSUInteger)numberOfSections;
-(SSection *)getSectionForIndex:(NSUInteger)index;

-(SSection *)getVisibleSectionForIndex:(NSUInteger)index;
-(NSUInteger)visibleNumberOfSections;
-(NSUInteger)getVisibleIndexForSection:(SSection *)section;


@end
