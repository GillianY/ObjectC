//
//  A.h
//  C7_MemoryControl
//
//  Created by ucom Apple 13 on 2016/11/22.
//  Copyright © 2016年 GinaY. All rights reserved.
//
#import "B.h"


@interface A : NSObject
{
    B *attr;

}

@property(strong) B *xyz;//-> relase _xyz; //strong :由A 本身確保它的存在
@property(copy) B *abc;  //-> relase _abc;

-(void)dealloc;
-(void)setAttr:(B*)arg;

@end
