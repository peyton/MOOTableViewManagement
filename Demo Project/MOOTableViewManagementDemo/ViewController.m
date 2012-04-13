//
//  ViewController.m
//  MOOTableViewManagementDemo
//
//  Created by Peyton Randolph on 4/12/12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View lifecycle

- (void)loadView;
{
    [super loadView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
