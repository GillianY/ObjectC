//
//  A.m
//  C7_MemoryControl
//
//  Created by ucom Apple 13 on 2016/11/22.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "A.h"

@implementation A : NSObject

-(void)dealloc{
    [super dealloc]; //arc forbid  //ARC counting -> NO
    [attr release]; //r4
    
    [_xyz release];
    printf("A dealloc \n");
}

-(void)setAttr:(B*)arg{
    [arg retain];  //r2
    [attr release]; //r3
    attr = arg;
}

@end
