//
//  MOOTableViewDelegate.h
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//

#import "MOOTableViewController.h"

@protocol MOOTableViewDelegate <UITableViewDelegate>

@property (nonatomic, unsafe_unretained) id<MOOTableViewController> controller;

@end

@interface MOOTableViewDelegate : NSObject <MOOTableViewDelegate>

@end
