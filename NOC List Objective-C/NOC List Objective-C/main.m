//
//  main.m
//  NOC List Objective-C
//
//  Created by Enayatullah Naseri on 4/8/20.
//  Copyright © 2020 Enayatullah Naseri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *ethan = [[LSIAgent alloc] initWithAgentsCoverName:@"Ethan Hunt" agentsRealName:@"Tom Cruise" agentsAccessLevel:(int)8 agentsCompromised:(BOOL)NO];
        LSIAgent *jim = [[LSIAgent alloc] initWithAgentsCoverName:@"Jim Phelps" agentsRealName:@"Jon Voight" agentsAccessLevel:(int)9 agentsCompromised:(BOOL)YES];
        LSIAgent *claire = [[LSIAgent alloc] initWithAgentsCoverName:@"Claire Phelps" agentsRealName:@"Emmanuelle Beart" agentsAccessLevel:(int)5 agentsCompromised:(BOOL)NO];
        LSIAgent *eugene = [[LSIAgent alloc] initWithAgentsCoverName:@"Eugene Kittridge" agentsRealName:@"Henry Czerny" agentsAccessLevel:(int)10 agentsCompromised:(BOOL)YES];
        LSIAgent *franz = [[LSIAgent alloc] initWithAgentsCoverName:@"Franz Krieger" agentsRealName:@"Jean Reno" agentsAccessLevel:(int)4 agentsCompromised:(BOOL)NO];
        LSIAgent *luther = [[LSIAgent alloc] initWithAgentsCoverName:@"Luther Stickell" agentsRealName:@"Ving Rhames" agentsAccessLevel:(int)4 agentsCompromised:(BOOL)NO];
        LSIAgent *sarah = [[LSIAgent alloc] initWithAgentsCoverName:@"Sarah Davies" agentsRealName:@"Kristin Scott Thomas" agentsAccessLevel:(int)5 agentsCompromised:(BOOL)YES];
        LSIAgent *max = [[LSIAgent alloc] initWithAgentsCoverName:@"Max RotGrab" agentsRealName:@"Vanessa Redgrave" agentsAccessLevel:(int)4 agentsCompromised:(BOOL)NO];
        LSIAgent *hannah = [[LSIAgent alloc] initWithAgentsCoverName:@"Hannah Williams" agentsRealName:@"Ingeborga Dapkūnaitė" agentsAccessLevel:(int)5 agentsCompromised:(BOOL)YES];
        LSIAgent *jack = [[LSIAgent alloc] initWithAgentsCoverName:@"Jack Harmon" agentsRealName:@"Emilio Estevez" agentsAccessLevel:(int)6 agentsCompromised:(BOOL)YES];
        LSIAgent *frank = [[LSIAgent alloc] initWithAgentsCoverName:@"Frank Barnes" agentsRealName:@"Dale Dye" agentsAccessLevel:(int)9 agentsCompromised:(BOOL)NO];
        
        NSArray *agents = @[ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank];
        
        int compAgents = 0;
        for (LSIAgent *agent in agents) {
            if ([agent agentsCompromised] == [NSNumber numberWithInt:1]) {
                compAgents++;
            }
        }
        NSLog(@"Number of agents compromised: %i", compAgents);
        
        for (LSIAgent *agent in agents) {
            if ([[agent agentsAccessLevel] isGreaterThanOrEqualTo: [NSNumber numberWithInt:8]]) {
                if ([agent agentsCompromised] == [NSNumber numberWithInt:1]) {
                    NSLog(@"%@, level: %@ **WARNING** **COMPROMISED**", [agent agentsRealName], [agent agentsAccessLevel]);
                } else {
                    NSLog(@"%@, level: %@", [agent agentsRealName], [agent agentsAccessLevel]);
                }
            }
        }
        
        int lowLevelAgents = 0;
        int midLevelAgents = 0;
        int highLevelAgents = 0;
        
        
        for (LSIAgent *agent in agents) {
            if ([[agent agentsAccessLevel] isGreaterThanOrEqualTo: [NSNumber numberWithInt:8]]) {
                highLevelAgents++;
            } else if ([[agent agentsAccessLevel] isGreaterThanOrEqualTo:[NSNumber numberWithInt:5]] && [[agent agentsAccessLevel] isLessThanOrEqualTo: [NSNumber numberWithInt:7]]) {
                midLevelAgents++;
            } else {
                lowLevelAgents++;
            }
        }
        NSLog(@"%d low level agents, %d mid level agents, %d high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);
        
    }
    return 0;
}
