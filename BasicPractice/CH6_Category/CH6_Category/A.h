//
//  A.h
//  CH6_Category
//
//  Created by ucom Apple 13 on 2016/11/21.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface A : NSObject
{
    int abc ;
}

-(instancetype)init; // instancetype 不是一個型態, 只能用在回傳值, 知道他實際上是哪個物件
 // id 任何型態的ObjectC物件 , 包含 null ?
-(id)sayHi;
-(void)sayHello;
//-(void)ff(id);

@end
