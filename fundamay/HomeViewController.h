//
//  inicioViewController.h
//  fundamay
//
//  Created by Leticia Luezas on 29/04/14.
//  Copyright (c) 2014 TitiAnt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"



@interface HomeViewController : UIViewController 


@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (void) displayAlert;


- (IBAction)delete:(id)sender;

- (IBAction)hideKeyboard:(id)sender;



- (IBAction)closeSession:(UIStoryboardSegue*)segue;


@end

