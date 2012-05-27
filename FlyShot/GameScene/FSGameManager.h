//
//  FSGameManager.h
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

typedef void (^GameTimerBlock)();

@interface FSGameManager : CCNode {
    GameTimerBlock onFinishedGame;
}

+ (FSGameManager *)sharedManager;
- (void)startTimer;
- (void)stopTimer;

@property (assign) float gameTime;
@property (nonatomic, copy) GameTimerBlock onFinishedGame;

@end
