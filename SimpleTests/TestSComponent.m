//
//  TestSComponent.m
//  Simple
//
//  Created by Mauricio Leal on 6/1/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SComponent.h"

@interface TestSComponent : XCTestCase

@end

@implementation TestSComponent

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

-(void)testInit {
    SComponent *component = [[SComponent alloc] init];
    NSLog(@"SComponent WITHOUT Key: %@", [component description]);
    
    SComponent *componentWithKey = [[SComponent alloc] initWithKey:@"component1"];
    NSLog(@"SComponent WITH Key: %@", [componentWithKey description]);
    XCTAssertEqualObjects([componentWithKey description], @"SimpleElementCellcomponent1SComponent");
}

-(void)testHidden {
    SComponent *component = [[SComponent alloc] init];
    XCTAssertEqual([component isHidden], NO);
    
    SComponent *componentWithKey = [[SComponent alloc] initWithKey:@"component1"];
    XCTAssertEqual([componentWithKey isHidden], NO);
    XCTAssertEqualObjects([componentWithKey description], @"SimpleElementCellcomponent1SComponent");
}

-(void)testEnabled {
    SComponent *component = [[SComponent alloc] init];
    XCTAssertEqual([component isEnabled], YES);
}


//- (void)testExample
//{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
//}

@end
