//
//  ViewController.m
//  00_clock
//
//  Created by ucom Apple 13 on 2016/11/25.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *showTime;

@property (strong, nonatomic) NSTimer * timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //欄位初始化
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime:) userInfo:nil repeats:YES];
    
    //delegation 事件 註冊
    
    //其他初始化邏輯
     self.showTime.text = [self getCurrentTimeString];
    
   
    
    
}
-(void) updateTime:(id) sender{
   
    NSLog(@"updateTime");
    self.showTime.text = [self getCurrentTimeString];

}

- (NSString *)getCurrentTimeString{
    NSDateFormatter * dateformater = [[NSDateFormatter alloc] init];
    dateformater.locale = [NSLocale localeWithLocaleIdentifier:@"zh_Hant_TW"];
    dateformater.dateFormat = @"yyyy-MM-dd a  HH:mm:ss";
    //@"yyyy-MM-dd'T'HH:mm:ssZZZZZ";
    //dateformater.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8];
    
    NSString *str = @"";
    NSDate *now =[NSDate date];
   
    str = [dateformater stringFromDate:now];
    //str = [NSString stringWithFormat:@"%@",now];
   // NSDate *date = [dateformater dateFromString:str];
    
   
    return str;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
