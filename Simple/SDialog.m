//
//  SDialog.m
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SDialog.h"
#import "SSection.h"

@implementation SDialog
@synthesize title = _title;
@synthesize sections = _sections;
@synthesize grouped = _grouped; // DEFAULT: YES

-(id)initWithTitle:(NSString *)title {
    self = [super init];
    if(self) {
        self.title = title;
        self.grouped = YES;
    }
    
    return self;
}

-(void)addSection:(SSection *)section {
    if(!_sections) _sections = [[NSMutableArray alloc] init];
    
    [self.sections addObject:section];
}

-(NSUInteger)numberOfSections {
    if(!_sections) return 0;
    
    return [self.sections count];
}

-(SSection *)getSectionForIndex:(NSUInteger)index {
    if(!_sections) return nil;
    
    return [self.sections objectAtIndex:index];
}

-(SSection *)getVisibleSectionForIndex:(NSUInteger)index {
    if(!_sections) return nil;
    
    for(SSection *section in self.sections)
        if(![section isHidden] && index-- == 0)
            return section;
    
    return nil;
}

-(NSUInteger)visibleNumberOfSections {
    if(!_sections) return NSNotFound;
    
    NSUInteger total = 0;
    for(SSection *section in self.sections)
        if(![section isHidden]) total++;
    
    return total;
}

-(NSUInteger)getVisibleIndexForSection:(SSection *)section {
    
    NSUInteger index = 0;
    for(SSection *scan in self.sections) {
        if(scan == section) return index;
        if(![scan isHidden]) index++;
    }
    
    return NSNotFound;
}

@end
