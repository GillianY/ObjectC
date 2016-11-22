//
//  F.m
//  C7_ObjC_autorelase
//
//  Created by ucom Apple 13 on 2016/11/22.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "F.h"
#import "P.h"

@implementation F

-(P*)createProduct{
    P *product = [[P alloc]init];
    [product autorelease]; //ARC forbid ->NO //r1: release by who created it
    return product;
}
-(void)dealloc{
    [super dealloc]; // !!!!!!!!!!!!!!!
    printf("F dealloc \n");

}

@end
