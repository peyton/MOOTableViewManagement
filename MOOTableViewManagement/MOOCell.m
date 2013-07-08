//
//  MOOCell.m
//  MOOTableViewManagementDemo
//
//  Created by Peyton Randolph on 7/7/13.
//

#import "MOOCell.h"

@concreteprotocol(MOOCell)

- (void)tableView:(UITableView *)tableView configureWithObject:(id)object;
{
    
}

+ (CGFloat)tableView:(UITableView *)tableView rowHeightForObject:(id)object;
{
    return 44.f;
}

@end