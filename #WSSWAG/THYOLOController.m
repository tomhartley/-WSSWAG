//
//  THYOLOController.m
//  #WSSWAG
//
//  Created by Tom Hartley on 07/10/12.
//  Copyright (c) 2012 Tom Hartley. All rights reserved.
//

#import "THYOLOController.h"

@interface THYOLOController ()

@end

@implementation THYOLOController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchBack {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
