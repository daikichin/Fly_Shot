//
//  FSGameFlysLayer.m
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import "FSGameFlysLayer.h"
#import "FSGameFly.h"

@implementation FSGameFlysLayer

int flyNumber = 20;

- (id)init
{
    if (self = [super init]) {
        CCSpriteBatchNode *flybatch = [CCSpriteBatchNode batchNodeWithFile:@"fly.png"];
        [self addChild:flybatch];
        for (int i; i < flyNumber; i++) {
            FSGameFly *fly = [FSGameFly node];
            [flybatch addChild:fly];
        }
    }
    return self;
}

@end
