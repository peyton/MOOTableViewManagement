//
//  MOOHeader.m
//  MOOTableViewManagementDemo
//
//  Created by Peyton Randolph on 7/7/13.
//

#import "MOOHeader.h"

@concreteprotocol(MOOHeader)

- (void)tableView:(UITableView *)tableView configureWithObject:(id)object;
{
    
}

+ (CGFloat)tableView:(UITableView *)tableView headerHeightForObject:(id)object;
{
    return 44.f;
}

@end