//
//  MOOTableViewController.h
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//


@protocol MOOTableViewDataSource, MOOTableViewDelegate;

@protocol MOOTableViewController <NSObject>

- (void)didSelectObject:(id)object atIndexPath:(NSIndexPath *)indexPath;

@end

@interface MOOTableViewController : UITableViewController <MOOTableViewController>

@end
