//
//  FSGameScene.m
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import "FSGameScene.h"
#import "FSGameBackgroundLayer.h"
#import "FSGameFlysLayer.h"

typedef enum _FSGameLayerZ {
FSGameLayerZBackground      = 0,
FSGameLayerZFlys            = 1
} FSGameLayerZ;


@implementation FSGameScene

+ (FSGameScene *)scene
{
    FSGameScene *gameScene = [self node];
    
    FSGameBackgroundLayer *backgroundLayer = [FSGameBackgroundLayer node];
    [gameScene addChild:backgroundLayer z:FSGameLayerZBackground];
    FSGameFlysLayer *flysLayer = [FSGameFlysLayer node];
    [gameScene addChild:flysLayer];
    
    return gameScene;
}

@end
