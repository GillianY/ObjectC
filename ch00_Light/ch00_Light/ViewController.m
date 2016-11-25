//
//  ViewController.m
//  ch00_Light
//
//  Created by ucom Apple 13 on 2016/11/25.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *Lightslider;
@property (weak, nonatomic) IBOutlet UIImageView *UIImageon;
- (IBAction)alphachanger:(UISlider *)sender;

- (IBAction)powerhanndler:(UISwitch *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)alphachanger:(UISlider *)sender {
    self.UIImageon.alpha = sender.value;
}

- (IBAction)powerhanndler:(UISwitch *)sender {
    
    self.UIImageon.hidden = !sender.on;
    self.Lightslider.enabled = !sender.on;
}
@end
