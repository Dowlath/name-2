//
//  nameTests.m
//  nameTests
//
//  Created by BSA Univ14 on 07/07/14.
//  Copyright (c) 2014 BSA Univ14. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "getnameViewController.h"
#import "Appdelegate.h"
#import "Numbers.h"

@interface nameTests : XCTestCase
@property (nonatomic,retain) NSManagedObjectContext *ManagedObjectContex;
//@property (strong, nonatomic) IBOutlet UITextField *text;
@end

@implementation nameTests
{
    getnameViewController *get;
    AppDelegate *app;
    Numbers *num;
    
}
@synthesize ManagedObjectContex;
- (void)setUp
{
    [super setUp];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    get= [storyboard instantiateInitialViewController];
    get=[[getnameViewController alloc]init];
    [get view];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
-(void)testViewControllerViewExists {
    XCTAssertNotNil([get view], @"ViewController should contain a view");
}

-(void) testfieldchecking
{
    XCTAssertNotEqualObjects(get.text.text,@"", @"text should not contain any object");
}

-(void)testsaveButtonConnection {
   // NSArray *actions = [get.save actionsForTarget:viewController
                                                  //forControlEvent:UIControlEventTouchUpInside];
    XCTAssertNil([get saveaction], @"add button should be connected");
}
-(void) testtextfield
{
//    get.text.text=[num names];
//    XCTAssertNil([num names], @"text");
   // get.text.text=@"hell";
    XCTAssertNotNil(get.text.text=@"hello", @"text");
}
-(void)testfetch
{

    [app number];
    XCTAssertTrue(!(get.managedObjContext.hasChanges), @"fetched");
}
-(void)testsaveButtonCheckIBAction {
  
    
    [get ActionSave];
    XCTAssertTrue(!(get.managedObjContext.hasChanges), @"Saved");
}


@end
