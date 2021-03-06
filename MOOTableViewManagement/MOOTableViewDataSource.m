//
//  MOOTableViewDataSource.m
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//

#import "MOOTableViewDataSource.h"

#import "MOOCell.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
@concreteprotocol(MOOTableViewDataSource)
#pragma clang pop


#pragma mark - UITableViewDataSource protocol methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    id object = [self tableView:tableView objectForRowAtIndexPath:indexPath];
    
    Class cellClass = [self tableView:tableView cellClassForObject:object];
    NSString * const identifier = NSStringFromClass(cellClass);
    
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil)
    {
        cell = [[cellClass alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    if ([cell conformsToProtocol:@protocol(MOOCell)])
    {
        if ([cell respondsToSelector:@selector(setDataSource:)])
            [(id<MOOCell>)cell setDataSource:self];
        [(id<MOOCell>)cell tableView:tableView configureWithObject:object];
    }
    
    return cell;
}

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
@implementation MOOTableViewDataSource
#pragma clang pop
@synthesize viewController = _viewController;

#pragma mark - UITableViewDataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 0;
}

#pragma mark - MOOTableViewDataSource protocol required methods

- (id)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return nil;
}

- (Class)tableView:(UITableView *)tableView cellClassForObject:(id)object;
{
    return nil;
}

#pragma mark - MOOTableViewDataSource protocol optional method stubs

/*
 * Return nil across the board so calls to super don't raise exceptions.
 */

- (id)tableView:(UITableView *)tableView objectForHeaderInSection:(NSUInteger)section;
{
    return nil;
}

- (id)tableView:(UITableView *)tableView objectForFooterInSection:(NSUInteger)section;
{
    return nil;
}

- (Class)tableView:(UITableView *)tableView headerClassForObject:(id)object;
{
    return nil;
}

- (Class)tableView:(UITableView *)tableView footerClassForObject:(id)object;
{
    return nil;
}

@end
