//
//  MOOTableViewController.h
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//

#import <EXTConcreteProtocol.h>

@protocol MOOTableViewDataSource, MOOTableViewDelegate;

@protocol MOOTableViewController <NSObject>

@optional
- (void)tableView:(UITableView *)tableView didSelectObject:(id)object atIndexPath:(NSIndexPath *)indexPath;

@end

@interface MOOTableViewController : UITableViewController <MOOTableViewController>

@property (nonatomic, strong) id<MOOTableViewDataSource> dataSource;
@property (nonatomic, strong) id<MOOTableViewDelegate> delegate;

@end
