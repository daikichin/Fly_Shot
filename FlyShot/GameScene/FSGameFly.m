//
//  FSGameFly.m
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import "FSGameFly.h"

@implementation FSGameFly

- (id)init
{
    if (self = [super initWithFile:@"fly.png"]) {
        self.position = ccp(100, 100);
    }
    return self;
}

@end
