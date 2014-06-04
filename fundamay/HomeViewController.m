//
//  inicioViewController.m
//  fundamay
//
//  Created by Leticia Luezas on 29/04/14.
//  Copyright (c) 2014 TitiAnt. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()


@end

@implementation HomeViewController

@synthesize emailTextField,passwordTextField;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (IBAction)delete:(id)sender
{
    //Ponemos las texfield en blanco metiendo una string nula
    emailTextField.text= @"";
    passwordTextField.text= @"";
    
}

-(IBAction)hideKeyboard:(id)sender
{
    //Metodo para esconder el teclado
    [passwordTextField resignFirstResponder];
    [emailTextField resignFirstResponder];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"ToFirst"])
    {
       
        //Creamos un objecto de tipo UITabBarController
        UITabBarController *TabBar=[segue destinationViewController];
        MainViewController *MainVC=[TabBar.viewControllers objectAtIndex:0];
        MainVC.labelText=[emailTextField text];
    }

}


- (IBAction)closeSession:(UIStoryboardSegue*)segue
{
    [self delete:@""];
}

- (void) displayAlert {
        //UIAlertView *alerta=[[UIAlertView alloc] initWithTitle:@"error" message:@"datos incorrectos"  delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil ,nil];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error #XX"
                                                        message:@"Message."
                                                       delegate:self
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK", nil];
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
    [alertView show];
}

@end
