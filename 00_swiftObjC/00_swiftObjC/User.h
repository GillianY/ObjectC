//
//  User.h
//  00_swiftObjC
//
//  Created by ucom Apple 13 on 2016/11/25.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
   // NSString * name;
    //int age;
}
@property(strong,nonatomic) NSString * name;
@property(nonatomic) int age;
//-(void)setName:(NSString *)sname;
//-(void)setAge:(int )iage;
//-(NSString *)name;
//-(int)age;

-(void)showInfo;
@end
