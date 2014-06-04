//
//  ToTracingSegue.m
//  fundamay
//
//  Created by Leticia Luezas on 26/05/14.
//  Copyright (c) 2014 TitiAnt. All rights reserved.
//

#import "ToTracingSegue.h"

@implementation ToTracingSegue

-(void) perform
{
    
    
    [[self sourceViewController] presentModalViewController:[self destinationViewController ] animated:NO];
     
}

@end
