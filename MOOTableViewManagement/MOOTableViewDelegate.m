//
//  MOOTableViewDelegate.m
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//

#import "MOOTableViewDelegate.h"

#import <objc/message.h>

#import "MOOCell.h"
#import "MOOFooter.h"
#import "MOOHeader.h"
#import "MOOTableViewDataSource.h"

@implementation MOOTableViewDelegate

#pragma mark - UITableViewDelegate methods

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;
{
    if (![tableView.dataSource conformsToProtocol:@protocol(MOOTableViewDataSource)])
    {
        NSLog(@"Object %@ does not conform to protocol %@", tableView.dataSource, NSStringFromProtocol(@protocol(MOOTableViewDataSource)));
        return nil;
    }
    
    if (![tableView.dataSource respondsToSelector:@selector(tableView:objectForHeaderInSection:)])
        return nil;
    
    id<MOOTableViewDataSource> dataSource = (id<MOOTableViewDataSource>)tableView.dataSource;
    id object = [dataSource tableView:tableView objectForHeaderInSection:section];
    if (![dataSource respondsToSelector:@selector(tableView:headerClassForObject:)])
        return nil;
    Class cls = [dataSource tableView:tableView headerClassForObject:object];
    
    UIView<MOOHeader> *header = [[cls alloc] initWithFrame:CGRectZero];
    [header tableView:tableView configureWithObject:object];
    
    return header;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;
{
    if (![tableView.dataSource conformsToProtocol:@protocol(MOOTableViewDataSource)])
    {
        NSLog(@"Object %@ does not conform to protocol %@", tableView.dataSource, NSStringFromProtocol(@protocol(MOOTableViewDataSource)));
        return nil;
    }
    
    if (![tableView.dataSource respondsToSelector:@selector(tableView:objectForFooterInSection:)])
        return nil;
    
    id<MOOTableViewDataSource> dataSource = (id<MOOTableViewDataSource>)tableView.dataSource;
    id object = [dataSource tableView:tableView objectForFooterInSection:section];
    if (![dataSource respondsToSelector:@selector(tableView:footerClassForObject:)])
        return nil;
    Class cls = [dataSource tableView:tableView footerClassForObject:object];
    
    if (![cls conformsToProtocol:@protocol(MOOHeader)])
    {
        NSLog(@"Class %@ does not conform to protocol %@", NSStringFromClass(cls), NSStringFromProtocol(@protocol(MOOHeader)));
        return nil;
    }
    
    UIView<MOOHeader> *footer = [[cls alloc] initWithFrame:CGRectZero];
    [footer tableView:tableView configureWithObject:object];
    
    return footer;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
{
    if (![tableView.dataSource conformsToProtocol:@protocol(MOOTableViewDataSource)])
    {
        NSLog(@"Object %@ does not conform to protocol %@", tableView.dataSource, NSStringFromProtocol(@protocol(MOOTableViewDataSource)));
        return 0.0f;
    }
    
    if (![tableView.dataSource respondsToSelector:@selector(tableView:objectForHeaderInSection:)])
        return 0.0f;
    
    id<MOOTableViewDataSource> dataSource = (id<MOOTableViewDataSource>)tableView.dataSource;
    id object = [dataSource tableView:tableView objectForHeaderInSection:section];

    if (![dataSource respondsToSelector:@selector(tableView:headerClassForObject:)])
        return 0.0f;
    Class cls = [dataSource tableView:tableView headerClassForObject:object];
    
    if (![cls respondsToSelector:@selector(tableView:headerHeightForObject:)])
        return 0.0f;
    
    return [cls tableView:tableView headerHeightForObject:object];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section;
{
    if (![tableView.dataSource conformsToProtocol:@protocol(MOOTableViewDataSource)])
    {
        NSLog(@"Object %@ does not conform to protocol %@", tableView.dataSource, NSStringFromProtocol(@protocol(MOOTableViewDataSource)));
        return 0.0f;
    }
    
    if (![tableView.dataSource respondsToSelector:@selector(tableView:objectForFooterInSection:)])
        return 0.0f;
    
    id<MOOTableViewDataSource> dataSource = (id<MOOTableViewDataSource>)tableView.dataSource;
    id object = [dataSource tableView:tableView objectForFooterInSection:section];
    if (![dataSource respondsToSelector:@selector(tableView:footerClassForObject:)])
        return 0.0f;
    Class cls = [dataSource tableView:tableView footerClassForObject:object];
    
    if (![cls respondsToSelector:@selector(tableView:footerHeightForObject:)])
        return 0.0f;
    
    return [cls tableView:tableView footerHeightForObject:object];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (![tableView.dataSource conformsToProtocol:@protocol(MOOTableViewDataSource)])
        return tableView.rowHeight;
    
    id<MOOTableViewDataSource> dataSource = (id<MOOTableViewDataSource>)tableView.dataSource;
    id object = [dataSource tableView:tableView objectForRowAtIndexPath:indexPath];
    Class cellClass = [dataSource tableView:tableView cellClassForObject:object];
    if (!([cellClass conformsToProtocol:@protocol(MOOCell)] && [cellClass respondsToSelector:@selector(tableView:rowHeightForObject:)]))
        return tableView.rowHeight;
    
    return [cellClass tableView:tableView rowHeightForObject:object];
}

@end
