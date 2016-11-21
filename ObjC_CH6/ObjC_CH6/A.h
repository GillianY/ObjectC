//
//  A.h
//  ObjC_CH6
//
//  Created by ucom Apple 13 on 2016/11/21.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#ifndef A_h
#define A_h


//@interface A
//  A is not extends NSObejct , means A is new root class (with the same level of NSObject)

@interface A : NSObject
{
    int abc; // protocol can't have attribute 
}

-(void)init:(int) a; // give the init
-(void) ma;
-(id)init:(int)a Withname:(int)b;
-(void) ma:(int)a Withname:(int)name WithAge:(int)age;


@end
#endif /* A_h */
