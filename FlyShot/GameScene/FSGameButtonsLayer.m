//
//  FSGameButtonsLayer.m
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import "FSGameButtonsLayer.h"
#import "FSGameInfo.h"


@implementation FSGameButtonsLayer

@synthesize onPushedStartButton;

- (id)init
{
    if (self = [super init]) {
        CGSize winSize = [CCDirector sharedDirector].winSize;
        CCMenuItemLabel *startBuntton = [CCMenuItemLabel itemWithLabel:[CCLabelTTF labelWithString:@"START" fontName:@"Georgia" fontSize:24] block:^(id sender)
        {
            if (self.onPushedStartButton) {
                self.onPushedStartButton();
            }
        }];
        startBuntton.position = ccp(winSize.width/2, winSize.height/2);
        
        CCMenu *menu = [CCMenu menuWithItems:startBuntton, nil];
        menu.position = ccp(0,0);
        [self addChild:menu];
    }
    return self;
}

@end
