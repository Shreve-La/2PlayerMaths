//
//  Doctor.h
//  PatientDoctor2
//
//  Created by swcl on 2017-06-29.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Perscription.h"

@class Patient;

@interface Doctor : NSObject

@property (strong, nonatomic) NSMutableDictionary *drsPatients;
//@property (strong, nonatomic) NSString *name;

-(void)acceptPatientWith:(NSString*)healthcard andName:(NSString*)name;

-(void)getTreatmentFor:(Patient*)patient;

@end
