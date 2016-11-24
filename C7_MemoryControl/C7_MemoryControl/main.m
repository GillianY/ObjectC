//
//  main.m
//  C7_MemoryControl
//
//  Created by ucom Apple 13 on 2016/11/22.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "A.h"
#import "B.h"

int main(int argc, const char * argv[]) {
    A *oa = [[A alloc]init];
    B *ob1 = [[B alloc]init];
    B *ob2 = [[B alloc]init];
    oa.attr = ob1;
    oa.attr = ob2;
    oa.xyz =ob1;
    
    [ob1 release];
    [ob2 release];
    [oa release];

     //r1
    
    return 0;
}
