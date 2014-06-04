//
//  ToFirstSegue.m
//  fundamay
//
//  Created by Leticia Luezas on 19/05/14.
//  Copyright (c) 2014 TitiAnt. All rights reserved.
//

#import "ToFirstSegue.h"
#import "HomeViewController.h"
#import "MainViewController.h"


@implementation ToFirstSegue

@synthesize hvc;

- (instancetype)init
{
    self = [super init];
    if (self) {
        hvc = (HomeViewController *)self.sourceViewController;
    }
    return self;
}

-(void)perform
{
    
    NSString *email=@"";
    NSString *password=@"";
    
   
    email= [((HomeViewController *)self.sourceViewController).emailTextField text];
    password=[((HomeViewController *)self.sourceViewController).passwordTextField text];
    
    NSLog(@"email: %@ , password: %@",email,password);
    
    //Creamos variables de tipo bool para comprobar si el email y el password introducidos son correctos o estan vacios
    
    BOOL check= [email isEqualToString:@"letiluezas@gmail.com"];
    BOOL check2=[password isEqualToString:@"120987"];
    
    //BOOL emailVacio=[email isEqualToString:@""];
    //BOOL passwordVacio=[password isEqualToString:@""];

    //Comparamos el email y el password introducido con el que es el correcto
    if (check && check2)
    {
        
        [[self sourceViewController] presentModalViewController:[self destinationViewController] animated:NO];
    }
        else
        {
        HomeViewController *hmc = (HomeViewController *)self.sourceViewController;
        [hmc displayAlert];
        }
}
@end

