//
//  THViewController.h
//  #WSSWAG
//
//  Created by Tom Hartley on 07/10/12.
//  Copyright (c) 2012 Tom Hartley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THYOLOController.h"
#import <AVFoundation/AVFoundation.h>

@interface THViewController : UIViewController {
    THYOLOController *backController;
    AVAudioPlayer *player;
}

- (IBAction)swapSides;

@end
