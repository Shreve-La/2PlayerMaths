//
//  main.m
//  PatientDoctor2
//
//  Created by swcl on 2017-06-29.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Doctor *doctor = [[Doctor alloc] init];
        Patient *patient = [[Patient alloc] initWithName:@"Sick Sick Man" andHealthCard:@"12345" andSymptom:@"Mumps"];
        
        [patient visitDoctor:doctor];
        [patient requestMedication:doctor];
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
