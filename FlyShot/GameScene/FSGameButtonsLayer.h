//
//  FSGameButtonsLayer.h
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

typedef void (^GameButtonBlock)();

@interface FSGameButtonsLayer : CCLayer {
    GameButtonBlock onPushedStartButton;
}

@property (nonatomic) GameButtonBlock onPushedStartButton;

@end
