//
//  SimpleTableDelegate.m
//  Simple
//
//  Created by Mauricio Leal on 6/2/14.
//  Copyright (c) 2014 Mauricio "Maltron" Leal. All rights reserved.
//

#import "SimpleTableDelegate.h"

@implementation SimpleTableDelegate
@synthesize dialog = _dialog;

-(id)initWithDialog:(SDialog *)dialog {
    self = [super init];
    if(self) {
        self.dialog = dialog;
    }
    
    return self;
}

// DELEGATE: Configuring Rows for the Table View
/**
 * CONFIGURING ROWS FOR THE TABLE VIEW
 * Asks the delegate for the height to use for a row in a specified location */
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * CONFIGURING ROWS FOR THE TABLE VIEW
 * Ask the delegate for a the estimated height of a row in a specified location */
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * CONFIGURING ROWS FOR THE TABLE VIEW
 * Ask the delegate to return the level of indentation for a row in a given section */
-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * CONFIGURING ROWS FOR THE TABLE VIEW
 * Tells the delegate the table view is about to draw a cell for a particular row */
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}



// DELEGATE: Managing Accessory Views

/**
 * MANAGING ACCESSORY VIEWS
 * Tells the delegate that the user tapped the accessory (disclosure) view associated with a given row */
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * MANAGING ACCESSORY VIEWS
 * DEPRECATED in OS 3.0
 * Asks the delegate for the type of standard view to use as a disclosure control for the specified row */
//-(UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
//
//}

// DELEGATE: Managing Selections

/**
 * MANAGING SELECTIONS
 * Tells the delegate that a specified row is about to be selected */
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * MANAGING SELECTIONS
 * Tells the delegate that the specified row is now selected */
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


/**
 * MANAGING SELECTIONS
 * Tells the delegate that a specified row is about to be deselected */
-(NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * MANAGING SELECTIONS
 * Tells the delegate that the specified row is now deselected */
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

// DELEGATE: Modifying the Header and Footer of Sections

/**
 * MODIFYING THE HEADER AND FOOTER OF SECTIONS
 * Asks the delegate for a view object to display in the header of the specified section of the table view */
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
}

/**
 * MODIFYING THE HEADER AND FOOTER OF SECTIONS
 * Asks the delegate for a view object to display in the footer of the specified section of the table view */
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    
}

/**
 * MODIFYING THE HEADER AND FOOTER OF SECTIONS
 * Asks the delegate for the height to use for the header of a particular section */
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
}

/**
 * MODIFYING THE HEADER AND FOOTER OF SECTIONS
 * Asks the delegate for the estimated height of the header of a particular section */
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section {
    
}

/**
 * MODIFYING THE HEADER AND FOOTER OF SECTIONS
 * Asks the delegate for the height to use for the footer of a particular section */
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
}

/**
 * MODIFYING THE HEADER AND FOOTER OF SECTIONS
 * Asks the delegate for the estimated height of the footer of a particular section */
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForFooterInSection:(NSInteger)section {
    
}


/**
 * MODIFYING THE HEADER AND FOOTER OF SECTIONS
 * Tells the delegate that a header view is about to be displayed for the specified section */
-(void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    
}

/**
 * MODIFYING THE HEADER AND FOOTER OF SECTIONS
 * Tells the delegate that a footer view is about to be displayed for the specified section */
-(void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section {
    
}


// DELEGATE: Editing Table Rows

/**
 * EDITING TABLE ROWS
 * Tells the delegate that the table view is about to go into editing mode */
-(void)tableView:(UITableView *)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * EDITING TABLE ROWS
 * Tells the delegate that the table view has left editing mode */
-(void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * EDITING TABLE ROWS
 * Asks the delegate for the editing style of a row at a particular location in a table view */
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * EDITING TABLE ROWS
 * Changes the default title of the delete-confirmation button */
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * EDITING TABLE ROWS
 * Asks the delegate whether the background of the specified row should be indented while the table view is in editing mode */
-(BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

// DELEGATE: Reordering Table Rows

/**
 * REORDERING TABLE ROWS
 * Asks the delegate to return a new index path to retarget a proposed move of a row */
-(NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath {
    
}

// DELEGATE: Tracking the Removal of Views

/**
 * TRACKING THE REMOVAL OF VIEWS
 * Tells the delegate that the specified cell was removed from the table */
-(void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * TRACKING THE REMOVAL OF VIEWS
 * Tells the delegate that the specified header view was removed from the table */
-(void)tableView:(UITableView *)tableView didEndDisplayingHeaderView:(UIView *)view forSection:(NSInteger)section {
    
}

/**
 * TRACKING THE REMOVAL OF VIEWS
 * Tells the delegate that the specified footer view was removed from the table */
-(void)tableView:(UITableView *)tableView didEndDisplayingFooterView:(UIView *)view forSection:(NSInteger)section {
    
}


// DELEGATE: Copying and Pasting Row Content

/**
 * COPYING AND PASTING ROW CONTENT
 * Asks the delegate if the editing menu should be shown for a certain row */
-(BOOL)tableView:(UITableView *)tableView shouldShowMenuForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * COPYING AND PASTING ROW CONTENT
 * Asks the delegate if the editing menu should omit the Copy and Paste command for a given row */
-(BOOL)tableView:(UITableView *)tableView canPerformAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
    
}

/**
 * COPYING AND PASTING ROW CONTENT
 * Tells the delegate to perform a copy or paste operation on the content of a given row */
-(void)tableView:(UITableView *)tableView performAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
    
}


// DELEGATE: Managing Table View Highlighting

/**
 * MANAGING TABLE VIEW HIGHLIGHTING
 * Asks the delegate if the specified row should be highlighted */
-(BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


/**
 * MANAGING TABLE VIEW HIGHLIGHTING
 * Tells the delegate that the specified row was highlighted */
-(void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

/**
 * MANAGING TABLE VIEW HIGHLIGHTING
 * Tells the delegate that the highlight was removed from the row at the specified index path */
-(void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


@end
