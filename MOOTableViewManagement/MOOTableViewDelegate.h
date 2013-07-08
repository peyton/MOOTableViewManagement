//
//  MOOTableViewDelegate.h
//  MOOTableViewManagement
//
//  Created by Peyton Randolph on 1/23/12.
//

#import <EXTConcreteProtocol.h>

@protocol MOOTableViewController;

@protocol MOOTableViewDelegate <UITableViewDelegate>

@property (nonatomic, weak) UIViewController<MOOTableViewController> *viewController;

@end

@interface MOOTableViewDelegate : NSObject <MOOTableViewDelegate>

@end
