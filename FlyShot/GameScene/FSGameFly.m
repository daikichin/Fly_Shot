//
//  FSGameFly.m
//  FlyShot
//
//  Created by Daiki on 12/05/27.
//  Copyright 2012年 Keio University SFC. All rights reserved.
//

#import "FSGameFly.h"


@implementation FSGameFly

+(FSGameFly *)fly
{
    FSGameFly *fly = [self spriteWithFile:@"fly.png"];
    return fly;
}

@end
