//
//  FSGameBackgroundLayer.m
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import "FSGameBackgroundLayer.h"


@implementation FSGameBackgroundLayer

- (id)init
{
    if (self = [super init]) {
        CGSize winSize = [[CCDirector sharedDirector] winSize];
        CCSprite *background = [CCSprite spriteWithFile:@"background.png"];
        background.position = ccp(winSize.width/2, winSize.height/2);
        [self addChild:background];
    }
    return self;
}

@end
