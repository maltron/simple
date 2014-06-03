//
//  SSection.h
//  Simple
//
//  Created by Mauricio Leal on 6/1/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SComponent;

@interface SSection : NSObject
@property (nonatomic, assign, getter = isHidden) BOOL hidden;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *footer;

@property (nonatomic, strong) NSMutableArray *components;

-(id)initWithTitle:(NSString *)title;
-(id)initWithTitle:(NSString *)title andFooter:(NSString *)footer;

-(void)addComponent:(SComponent *)component;
-(void)insertComponent:(SComponent *)component atIndex:(NSUInteger)index;
-(NSUInteger)indexOfComponent:(SComponent *)component;

-(SComponent *)getVisibleComponentForIndex:(NSUInteger)index;
-(NSUInteger)visibleNumberOfComponents;
-(NSUInteger)getVisibleIndexForComponent:(SComponent *)component;

@end
