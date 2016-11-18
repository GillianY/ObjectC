//
//  Person.h
//  OBC5_Class
//
//  Created by ucom Apple 13 on 2016/11/18.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

-(void)sayHelloToName:(NSString*)name; //UTF8
-(void)sayHelloToName2:(char*)name;  //ASCII
-(void)sayHello;

@end
