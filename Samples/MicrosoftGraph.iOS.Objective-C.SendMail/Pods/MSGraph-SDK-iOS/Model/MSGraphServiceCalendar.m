/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceCalendar
 *
 */
@implementation MSGraphServiceCalendar


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"name", @"name", @"color", @"color", @"changeKey", @"changeKey", @"events", @"events", @"calendarView", @"calendarView", @"id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.calendar";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_name = (![dic objectForKey: @"name"] || [ [dic objectForKey: @"name"] isKindOfClass:[NSNull class]] )?_name:[[dic objectForKey: @"name"] copy];
		_color = (![dic objectForKey: @"color"] || [ [dic objectForKey: @"color"] isKindOfClass:[NSNull class]] )?_color:[MSGraphServiceCalendarColorSerializer fromString:[dic objectForKey: @"color"]];
		_changeKey = (![dic objectForKey: @"changeKey"] || [ [dic objectForKey: @"changeKey"] isKindOfClass:[NSNull class]] )?_changeKey:[[dic objectForKey: @"changeKey"] copy];

        if([dic objectForKey: @"events"] != [NSNull null]){
            _events = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"events"]) {
                [_events addObject:[[MSGraphServiceEvent alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_events resetChangedFlag];
        }
        

        if([dic objectForKey: @"calendarView"] != [NSNull null]){
            _calendarView = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"calendarView"]) {
                [_calendarView addObject:[[MSGraphServiceEvent alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_calendarView resetChangedFlag];
        }
        
		self._id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.name copy];if (curVal!=nil) [dic setValue: curVal forKey: @"name"];}
	{[dic setValue: [MSGraphServiceCalendarColorSerializer toString:self.color] forKey: @"color"];}
	{id curVal = [self.changeKey copy];if (curVal!=nil) [dic setValue: curVal forKey: @"changeKey"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.events) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"events"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.calendarView) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"calendarView"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.calendar" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.name;
    if([self.updatedValues containsObject:@"name"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"name"];
            }
    }
 if([self.updatedValues containsObject:@"color"])
            { [dic setValue: [MSGraphServiceCalendarColorSerializer toString:self.color] forKey: @"color"];
}	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"changeKey"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"changeKey"];
            }
    }
	{id curVal = self.events;
    if([self.updatedValues containsObject:@"events"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"events"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.events) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"events"];
        }
        
            }}
	{id curVal = self.calendarView;
    if([self.updatedValues containsObject:@"calendarView"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"calendarView"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.calendarView) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"calendarView"];
        }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
    return dic;
}


/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"name"];
}
       
/** Setter implementation for property color
 *
 */
- (void) setColor: (MSGraphServiceCalendarColor) value {
    _color = value;
    [self valueChangedFor:@"color"];
}
       

- (void)setColorString:(NSString *)string {
        
    _color = [MSGraphServiceCalendarColorSerializer fromString:string];
    [self valueChangedFor:@"color"]; 
}

/** Setter implementation for property changeKey
 *
 */
- (void) setChangeKey: (NSString *) value {
    _changeKey = value;
    [self valueChangedFor:@"changeKey"];
}
       
/** Setter implementation for property events
 *
 */
- (void) setEvents: (NSMutableArray *) value {
    _events = value;
    [self valueChangedFor:@"events"];
}
       
/** Setter implementation for property calendarView
 *
 */
- (void) setCalendarView: (NSMutableArray *) value {
    _calendarView = value;
    [self valueChangedFor:@"calendarView"];
}
       

@end
