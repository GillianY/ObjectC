//
//  A.h
//  BasicObjC
//
//  Created by ucom Apple 13 on 2016/11/18.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface A : NSObject  //: UITableViewController
{
    @public
    int x ;
    int y ;
    
    @private
    char *name;
}


-(instancetype)init:(int)x;
-(void) greetingMessage;
-(void) greetingMessage:(int)index:(int)x:(int)y;

-(int) greetingMessage:(int)index:(int)x;


@end
