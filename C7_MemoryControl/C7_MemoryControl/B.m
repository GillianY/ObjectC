//
//  B.m
//  C7_MemoryControl
//
//  Created by ucom Apple 13 on 2016/11/22.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import "B.h"

@implementation B

-(void)dealloc{
    [super dealloc];
    
    printf("B dealloc \n");
}

@end
