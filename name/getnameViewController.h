//
//  getnameViewController.h
//  name
//
//  Created by BSA Univ14 on 07/07/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface getnameViewController : UIViewController
@property (strong, nonatomic) NSManagedObjectContext *managedObjContext;
@property (strong, nonatomic) IBOutlet UIButton *saveaction;
- (IBAction)save:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *text;
@property(strong,nonatomic)NSArray *nameArry;
@property(strong,nonatomic) NSString  *newobj;
-(void)ActionSave;
@end
