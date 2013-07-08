//
//  MOOFooter.h
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 2/15/12.
//

#import <EXTConcreteProtocol.h>

@protocol MOOFooter <NSObject>

- (void)tableView:(UITableView *)tableView configureWithObject:(id)object;
+ (CGFloat)tableView:(UITableView *)tableView footerHeightForObject:(id)object;

@end
