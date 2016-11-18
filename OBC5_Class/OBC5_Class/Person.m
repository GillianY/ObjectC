//
//  Person.m
//  OBC5_Class
//
//  Created by ucom Apple 13 on 2016/11/18.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)sayHello{
   // NSLog(@"Hello");
    NSString* name =@"test ";
   // sayHelloToName(name); //!!!!!error!!!!
}

-(void)sayHelloToName:(NSString*)name{
    NSLog(@"Hello %s",name);
}

@end
