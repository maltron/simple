//
//  TestSSection.m
//  Simple
//
//  Created by Mauricio Leal on 6/1/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "SComponent.h"
#import "SSection.h"

@interface TestSSection : XCTestCase

@end

@implementation TestSSection

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testTitle {
    SSection *section = [[SSection alloc] initWithTitle:@"Hello World"];
    XCTAssertEqual([section title], @"Hello World");
}

-(void)testComponents {
    SComponent *c1 = [[SComponent alloc] init];
    
    SComponent *c2 = [[SComponent alloc] init];
    [c2 setHidden:YES];
    
    SComponent *c3 = [[SComponent alloc] init];
    [c3 setHidden:YES];
    
    SComponent *c4 = [[SComponent alloc] init];
    
    SSection *section = [[SSection alloc] initWithTitle:@"Title" andFooter:@"Footer"];
    XCTAssertEqualObjects([section title], @"Title");
    XCTAssertEqualObjects([section footer], @"Footer");
    XCTAssertEqual([section isHidden], NO);
    [section addComponent:c1];
    [section addComponent:c2];
    [section addComponent:c3];
    [section insertComponent:c4 atIndex:0];
    
    XCTAssertEqual([section indexOfComponent:c4], 0);
    XCTAssertEqual([section visibleNumberOfComponents], 2);
    XCTAssertEqual([section getVisibleComponentForIndex:1], c1);
    XCTAssertEqual([section getVisibleIndexForComponent:c4], 0);
    
    SSection *sectionNoTitle = [[SSection alloc] init];
    XCTAssertEqual([sectionNoTitle isHidden], NO);
}

//- (void)testExample
//{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
//}

@end
