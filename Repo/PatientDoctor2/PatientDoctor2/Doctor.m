//
//  Doctor.m
//  PatientDoctor2
//
//  Created by swcl on 2017-06-29.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor


- (instancetype)init;
{
    self = [super init];
    if (self) {
        _drsPatients = [NSMutableDictionary new];
        
    
    }
    return self;
}


-(void)acceptPatientWith:(NSString*)healthcard andName:(NSString*)name{
    NSLog(@"Welcome");
    if (healthcard)
    {
        NSLog(@"You've been accepted! your healthcard number is %@", healthcard);
        NSLog(@"You've been added to my Patient list");
        self.drsPatients[healthcard] = name;
        NSLog(@"%@", self.drsPatients[healthcard]);
    }else{
        NSLog(@"Your healthcard is not valid");
    }
}


-(void)getTreatmentFor:(Patient*)patient{
    if(self.drsPatients[patient.healthcard])
    {
        NSLog(@"Since you are my Patient, I can give you a perscription");
        Perscription *perscription = [Perscription new];
        [patient.healthRecords addObject:perscription];
        
        
    }else{
        NSLog(@"Sorry you are not my Patient, I can not give you a perscription");
    
    }


}





@end
