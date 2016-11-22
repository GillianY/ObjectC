//
//  P.m
//  C7_ObjC_autorelase
//
//  Created by ucom Apple 13 on 2016/11/22.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "P.h"

@implementation P
-(void)dealloc{
    [super dealloc];
    printf("P delloac\n");
}


@end