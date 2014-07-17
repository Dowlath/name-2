//
//  secondViewController.m
//  name
//
//  Created by BSA Univ14 on 15/07/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import "secondViewController.h"
#import "AppDelegate.h"
#import "Numbers.h"
#import "getnameViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface secondViewController ()
{
    AppDelegate *delobj;
    Numbers *num;
}

@end

@implementation secondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    delobj=[[UIApplication sharedApplication]delegate];
    self.managedObjContext=delobj.managedObjectContext;
    self.nameArry=[delobj number];
    NSLog(@"%d",self.nameArry.count);
    num=[self.nameArry objectAtIndex:0];
    self.labelobj.text=num.names;
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:num.names];
     [utterance setRate:.15];
    [synthesizer speakUtterance:utterance];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
