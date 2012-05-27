//
//  FSGameFly.m
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import "FSGameFly.h"

@implementation FSGameFly

@synthesize isValid;

- (id)init
{
    if (self = [super initWithFile:@"fly.png"]) {
        srand(time(NULL));
        [self resetFly];
    }
    return self;
}

- (void)resetFly
{
    CGSize winSize = [CCDirector sharedDirector].winSize;
    self.isValid = NO;
//    self.visible = NO;
    self.position = ccp(rand()%((int)winSize.width),rand()%2*winSize.height);
}

@end
