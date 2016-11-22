//
//  A.m
//  CH6_Category
//
//  Created by ucom Apple 13 on 2016/11/21.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import "A.h"

@implementation A

-(instancetype)init{
    self = [super init];
    if(self == [A class]){
        abc =10;
    }
    return self;
}

-(void)sayHello
{
    printf("Ciao Sabrina \n");
}
-(id)sayHi{
    
    NSString * str = @"Hello";
    return str;
}





@end
