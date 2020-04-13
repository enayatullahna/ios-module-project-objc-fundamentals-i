//
//  LSIAgent.m
//  NOC List Objective-C
//
//  Created by Enayatullah Naseri on 4/8/20.
//  Copyright © 2020 Enayatullah Naseri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

@implementation LSIAgent

- (instancetype) initWithAgentsCoverName:(NSString *)agentsCoverName agentsRealName:(NSString *)agentsRealName agentsAccessLevel:(int)agentsAccessLevel agentsCompromised:(BOOL)agentsCompromised {
    
    self = [super init];
    
    if (self) {
        
        _agentsCoverName = agentsCoverName;
        _agentsRealName = agentsRealName;
        NSNumber *agentsAccessLevel = [NSNumber numberWithInt:agentsAccessLevel];
        _agentsAccessLevel = agentsAccessLevel;
        NSNumber *agentsCompromised = [NSNumber numberWithInt:agentsCompromised];
        _agentsCompromised = agentsCompromised;
    }
    
    return self;
}

@end
