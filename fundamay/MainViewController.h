//
//  MainViewController.h
//  fundamay
//
//  Created by Leticia Luezas on 15/05/14.
//  Copyright (c) 2014 TitiAnt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TracingViewController.h"
#import "HomeViewController.h"

@interface MainViewController : UIViewController

// La propiedad que guarda la informacion que quiero pasar.
@property FMStrongVar NSString *labelText;

// La label donde quiero mostrar esa informacion.
@property FMStrongVar IBOutlet UILabel *labelWelcome;


@end
