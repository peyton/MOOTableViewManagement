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
    
    _dataSource = dataSource;
    self.tableView.dataSource = self.dataSource;
}

- (void)setDelegate:(id<MOOTableViewDelegate>)delegate;
{
    if (delegate == self.delegate)
        return;
    
    _delegate = delegate;
    self.delegate.viewController = self;
    self.tableView.delegate = self.delegate;
}

@end
