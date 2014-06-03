//
//  SimpleDataSource.m
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SimpleDataSource.h"

@implementation SimpleDataSource
@synthesize dialog = _dialog;

-(id)initWithDialog:(SDialog *)dialog {
    self = [super init];
    if(self) {
        self.dialog = dialog;
    }
    
    return self;
}

// DATA SOURCE: Configuring a Table View

/**
 * CONFIGURING A TABLE VIEW [REQUIRED]
 * Asks the data source for a cell to insert in a particular location of the table view */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
    
}

/**
 * CONFIGURING A TABLE VIEW [REQUIRED]
 * Asks the data source for a cell to insert in a particular location of the table view */
// DATA SOURCE (REQUIRED REQUIRED REQUIRED REQUIRED REQUIRED REQUIRED REQUIRED REQUIRED)
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
}


/**
 * CONFIGURING A TABLE VIEW
 * asks the data source to return the number of sections in the table view */
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
}


/**
 * CONFIGURING A TABLE VIEW
 * Asks the data source to return the titles for the sections for a table view */
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    
}

/**
 * CONFIGURING A TABLE VIEW
 * Ask the data source to return the index of the section having the given title and section title index */
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    
}

/**
 * CONFIGURING A TABLE VIEW
 * Ask the data source for the title of the header of the specified section of the table view */
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
}

/**
 * CONFIGURING A TABLE VIEW
 * Asks the data source for the title of the footer of the specified section of the table view */
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    
}

// DATA SOURCE: Inserting or Deleting Table Rows

/**
 * INSERTING OR DELETING TABLE ROWS
 * Ask the data source to commit the insertion or deletion of a specified row in the receiver */
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * INSERTING OR DELETING TABLE ROWS
 * Ask the data source to verify that the given row is editable */
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

// DATA SOURCE: Reordering Table Rows

/**
 * REORDERING TABLE ROWS
 * Ask the data source whether a given row can be moved to another location in the table view */
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * REORDERING TABLE ROWS
 * Tells the data source to move a row at a specified location in the table view to another location */
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    
}

@end
