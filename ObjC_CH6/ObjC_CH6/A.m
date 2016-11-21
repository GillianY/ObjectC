//
//  A.m
//  ObjC_CH6
//
//  Created by ucom Apple 13 on 2016/11/21.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "A.h"

@implementation A :NSObject
//.h clare method  -(void)ma;   but not implements 


-(void)init:(int) a //init vs initialize...
{
  //  if(self == Person){
    
    
  //  }
    
    abc = a;
}


-(id)init:(int) a :(int) b
{
    return self;
}

@end
