//
//  MOOFooter.m
//  MOOTableViewManagementDemo
//
//  Created by Peyton Randolph on 7/7/13.
//

#import "MOOFooter.h"

@concreteprotocol(MOOFooter)

- (void)tableView:(UITableView *)tableView configureWithObject:(id)object;
{
    
}

+ (CGFloat)tableView:(UITableView *)tableView footerHeightForObject:(id)object;
{
    return 44.f;
}

@end