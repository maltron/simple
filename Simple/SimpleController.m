//
//  SimpleController.m
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SimpleController.h"
#import "SimpleTable.h"
#import "SDialog.h"

@interface SimpleController ()
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation SimpleController
@synthesize dialog = _dialog;
@synthesize tableView = _tableView;

-(id)initWithDialog:(SDialog *)dialog {
    self = [super init];
    if(self) {
        self.dialog = dialog;
    }
    
    return self;
}

-(void)viewWillAppear:(BOOL)animated {
    NSLog(@">>> [self viewWillAppear]");
    [super viewWillAppear:animated];
    
    self.title = [self.dialog title];
    self.navigationItem.title = [self.dialog title];
}

-(void)loadView {
    NSLog(@">>> [self loadView]");
    [super loadView];
    
    _tableView = [[SimpleTable alloc] initWithDialog:self.dialog];
    self.view = self.tableView;
}

- (void)viewDidLoad {
    NSLog(@">>> [self viewDidLoad]");
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated {
    NSLog(@">>> [self viewDidAppear]");
    [super viewDidAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated {
    NSLog(@">>> [self viewWillDisappear]");
    [super viewWillDisappear:animated];
}

@end
