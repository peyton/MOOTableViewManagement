//
//  MOOTableViewDataSource.h
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//

#import <EXTConcreteProtocol.h>

#import "MOOTableViewController.h"

@protocol MOOTableViewDataSource <UITableViewDataSource>

@property (nonatomic, weak) UIViewController<MOOTableViewController> *viewController;

@required
- (id)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath;
- (Class)tableView:(UITableView *)tableView cellClassForObject:(id)object;

@concrete
- (id)tableView:(UITableView *)tableView objectForHeaderInSection:(NSUInteger)section;
- (id)tableView:(UITableView *)tableView objectForFooterInSection:(NSUInteger)section;

- (Class)tableView:(UITableView *)tableView headerClassForObject:(id)object;
- (Class)tableView:(UITableView *)tableView footerClassForObject:(id)object;

@end

@interface MOOTableViewDataSource : NSObject <MOOTableViewDataSource>

@end
