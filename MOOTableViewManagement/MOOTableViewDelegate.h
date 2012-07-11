//
//  MOOTableViewDelegate.h
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//

#import "MOOTableViewController.h"

@protocol MOOTableViewController;

@protocol MOOTableViewDelegate <UITableViewDelegate>

@property (nonatomic, weak) id<MOOTableViewController> viewController;

@end

@interface MOOTableViewDelegate : NSObject <MOOTableViewDelegate>

@end
