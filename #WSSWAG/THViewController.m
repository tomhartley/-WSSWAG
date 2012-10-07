//
//  THViewController.m
//  #WSSWAG
//
//  Created by Tom Hartley on 07/10/12.
//  Copyright (c) 2012 Tom Hartley. All rights reserved.
//

#import "THViewController.h"

@interface THViewController ()

@end

@implementation THViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    backController = [[THYOLOController alloc] initWithNibName:@"THYOLOController" bundle:nil];
    NSURL *theUrl = [[NSBundle mainBundle] URLForResource:@"win" withExtension:@"mp3"];
    NSLog(@"%@",theUrl);
    NSError *error;
    player = [[AVAudioPlayer alloc]
                              initWithContentsOfURL:theUrl error:&error];
    if (error) {
        NSLog(@"%@",error);
    }
    [player setNumberOfLoops:-1];
    [player play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swapSides {
    [backController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:backController animated:YES completion:^{
        [backController dismissViewControllerAnimated:YES completion:^{
            [self swapSides];
        }];
    }];
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}


@end
