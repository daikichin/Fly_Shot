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
#import "FSGameManager.h"
#import "FSGameButtonsLayer.h"

typedef enum _FSGameLayerZ {
FSGameLayerZBackground          = 0,
FSGameLayerZFlys                = 1,
FSGameLayerZButtons             = 2
} FSGameLayerZ;

static FSGameManager *manager = nil;

@implementation FSGameScene

+ (FSGameScene *)scene
{
    FSGameScene *gameScene = [self node];
    
    manager = [FSGameManager sharedManager];
    [gameScene addChild:manager];
    FSGameBackgroundLayer *backgroundLayer = [FSGameBackgroundLayer node];
    [gameScene addChild:backgroundLayer z:FSGameLayerZBackground];
    FSGameFlysLayer *flysLayer = [FSGameFlysLayer node];
    [gameScene addChild:flysLayer z:FSGameLayerZFlys];
    FSGameButtonsLayer *buttonsLayer = [FSGameButtonsLayer node];
    [gameScene addChild:buttonsLayer z:FSGameLayerZButtons];
    
    manager.onMakeFly =^(){
        [flysLayer ]
    };
    
    buttonsLayer.onPushedStartButton = ^(){
        [manager startTimer];
    };
    
    return gameScene;
}

@end
