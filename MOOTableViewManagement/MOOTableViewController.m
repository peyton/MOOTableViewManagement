//
//  MOOTableViewController.m
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//

#import "MOOTableViewController.h"

#import "MOOTableViewDataSource.h"
#import "MOOTableViewDelegate.h"

@implementation MOOTableViewController
@synthesize dataSource = _dataSource;
@synthesize delegate = _delegate;

#pragma mark - MOOTableViewController methods

- (void)tableView:(UITableView *)tableView didSelectObject:(id)object atIndexPath:(NSIndexPath *)indexPath;
{
    return;
}

#pragma mark - Getters and setters

- (void)setDataSource:(id<MOOTableViewDataSource>)dataSource;
{
    if (dataSource == self.dataSource)
        return;
    
    // Decommission old data source
    self.dataSource.viewController = nil;
    
    _dataSource = dataSource;
    
    // Configure with new data source
    self.dataSource.viewController = self;
    self.tableView.dataSource = self.dataSource;
}

- (void)setDelegate:(id<MOOTableViewDelegate>)delegate;
{
    if (delegate == self.delegate)
        return;
    
    // Decommission old delegate
    self.delegate.viewController = nil;
    
    _delegate = delegate;
    
    // Configure with new delegate
    self.delegate.viewController = self;
    self.tableView.delegate = self.delegate;
}

@end
