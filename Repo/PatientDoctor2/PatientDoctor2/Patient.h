//
//  Patient.h
//  PatientDoctor2
//
//  Created by swcl on 2017-06-29.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (strong, nonatomic, readonly) NSString *name;
@property (strong, nonatomic, readonly) NSString *healthcard;
@property (strong, nonatomic, readonly) NSString *symptom;
@property (strong, nonatomic) NSMutableArray *healthRecords;

-(void)visitDoctor:(Doctor*)doctor;

-(void)requestMedication:(Doctor*)doctor;

- (instancetype)initWithName:(NSString*)name andHealthCard:(NSString*)healthCard andSymptom:(NSString*)symptom;

@end
