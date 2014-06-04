//
//  MainViewController.m
//  fundamay
//
//  Created by Leticia Luezas on 15/05/14.
//  Copyright (c) 2014 TitiAnt. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()


@end

@implementation MainViewController
@synthesize labelText;

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
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.labelWelcome.text = self.labelText;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /*
    
    if([[segue identifier] isEqualToString:@"ToTracing"])
    {
        NSLog(@"esta pasando x tracing");
        
        TracingViewController *tracingVC=[self.tabBarController.viewControllers objectAtIndex:1];
        tracingVC=[segue destinationViewController ];
        
    }
    */
    
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
