//
//  FSGameFlysLayer.m
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import "FSGameFlysLayer.h"
#import "FSGameFly.h"
#import "FSGameInfo.h"

@implementation FSGameFlysLayer

<<<<<<< HEAD
int flyNumber = 20;
CCSpriteBatchNode *flybatch = nil;
=======
static int nextFlyNumber;
static CCSpriteBatchNode *flybatch = nil;
>>>>>>> Modified makeFly .

- (id)init
{
    if (self = [super init]) {
        flybatch = [CCSpriteBatchNode batchNodeWithFile:@"fly.png"];
        [self addChild:flybatch];
        for (int i; i<flyNumber; i++) {
            FSGameFly *fly = [FSGameFly node];
            [flybatch addChild:fly];
        }
    }
    return self;
}

- (void)makeFly
{
<<<<<<< HEAD
    flybatch 
=======
    CCArray *flys = [flybatch children];
    FSGameFly *fly = [flys objectAtIndex:nextFlyNumber];
    if(!fly.isValid) [fly resetFly];
    nextFlyNumber++;
    if(nextFlyNumber >= [flys count]) nextFlyNumber = 0;
>>>>>>> Modified makeFly .
}

@end
