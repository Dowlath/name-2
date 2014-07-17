//
//  getnameViewController.m
//  name
//
//  Created by BSA Univ14 on 07/07/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import "getnameViewController.h"
#import "AppDelegate.h"
#import "Numbers.h"
#import "secondViewController.h"

@interface getnameViewController ()
{
    AppDelegate *appdelegate;
    Numbers *detail;
}

@end

@implementation getnameViewController

@synthesize managedObjContext,nameArry,text;


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
    AppDelegate *appObj=[[UIApplication sharedApplication]delegate];
    
    managedObjContext=appObj.managedObjectContext;

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)ActionSave{
    
    secondViewController *next=[[secondViewController alloc]init];
    appdelegate=[[UIApplication sharedApplication]delegate];
    self.managedObjContext=appdelegate.managedObjectContext;
    //self.nameArry=[appdelegate number];
    self.nameArry=[appdelegate number];
    detail=[self.nameArry objectAtIndex:0];
    
    NSLog(@"savings=%@",detail.names);
    detail.names=[NSString stringWithFormat:@"%@",text.text];
    NSLog(@"new value =%@",text.text);
    
        NSError *error=nil;
    if(![self.managedObjContext save:&error])
    {
        NSLog(@"not save %@",[error localizedDescription]);
        [self.view endEditing:YES];
        
        
        
    }
   next= [[UIStoryboard storyboardWithName:@"Storyboard" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"secondViewController"];
   [self presentViewController:next animated:YES completion:^void{}];

}

- (IBAction)save:(id)sender {
    [self ActionSave];
    
   }
@end
