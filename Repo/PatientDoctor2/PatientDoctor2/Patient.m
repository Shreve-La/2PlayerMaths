//
//  Patient.m
//  PatientDoctor2
//
//  Created by swcl on 2017-06-29.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString*)name andHealthCard:(NSString*)healthCard andSymptom:(NSString*)symptom
{
    self = [super init];
    if (self) {
        _name = name;
        _healthcard = healthCard;
        _symptom = symptom;
        _healthRecords = [NSMutableArray new];
    }
    return self;
}

-(void)visitDoctor:(Doctor*)doctor{
    NSLog(@"Patient: Going to visit a doctor");
    [doctor acceptPatientWith:self.healthcard andName:(NSString*)self.name];


}



-(void)requestMedication:(Doctor*)doctor{
    [doctor getTreatmentFor:(Patient*)self];

}






@end
