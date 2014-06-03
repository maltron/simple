//
//  SSection.m
//  Simple
//
//  Created by Mauricio Leal on 6/1/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SSection.h"
#import "SComponent.h"

@implementation SSection
@synthesize hidden = _hidden;
@synthesize title = _title;
@synthesize footer = _footer;
@synthesize components = _components;

-(id)initWithTitle:(NSString *)title {
    self = [self initWithTitle:title andFooter:nil];
    if(self) {
    }
    
    return self;
}

-(id)initWithTitle:(NSString *)title andFooter:(NSString *)footer {
    self = [super init];
    if(self) {
        self.title = title;
        self.footer = footer;
        self.hidden = NO;
    }
    
    return self;
}

-(void)addComponent:(SComponent *)component {
    if(!_components) _components = [[NSMutableArray alloc] init];
    
    [self.components addObject:component];
}

-(void)insertComponent:(SComponent *)component atIndex:(NSUInteger)index {
    if(!_components) _components = [[NSMutableArray alloc] init];
    
    [self.components insertObject:component atIndex:index];
}

-(NSUInteger)indexOfComponent:(SComponent *)component {
    if(!_components) return NSNotFound;
    
    return [self.components indexOfObject:component];
}

-(SComponent *)getVisibleComponentForIndex:(NSUInteger)index {
    if(!_components) return nil;
    
    for(SComponent *component in self.components)
        if(![component isHidden] && index-- == 0)
            return component;
    
    return nil;
}


-(NSUInteger)visibleNumberOfComponents {
    NSUInteger total = 0;
    for(SComponent *component in self.components)
        if(![component isHidden]) total++;
    
    return total;
}

-(NSUInteger)getVisibleIndexForComponent:(SComponent *)component {
    NSUInteger index = 0;
    for(SComponent *scan in self.components) {
        if(scan == component) return index;
        if(![scan isHidden]) index++;
    }
    
    return NSNotFound;
}

@end
