//
//  User.m
//  00_swiftObjC
//
//  Created by ucom Apple 13 on 2016/11/25.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import "User.h"

@implementation User

-(void )showInfo{
    
   // User *u = [[User alloc]init];
   // [u setName:@"Gina"];
   // [u setAge:23];
   // const char *ptr =[u.name cStringUsingEncoding:NSUTF8StringEncoding];
    //printf("%s : %d\n",ptr ,u.age );
    //NSString * info = "%s %d",u.name , u.age ;
    NSLog(@"%@ : %d\n", self.name ,self.age );
 
   
}

@end
