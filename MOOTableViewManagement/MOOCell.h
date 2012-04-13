//
//  MOOCell.h
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/24/12.
//


@protocol MOOCell <NSObject>

- (void)tableView:(UITableView *)tableView configureWithObject:(id)object;
+ (CGFloat)tableView:(UITableView *)tableView rowHeightForObject:(id)object;

@end;