//
//  LSIAgent.h
//  NOC List Objective-C
//
//  Created by Enayatullah Naseri on 4/8/20.
//  Copyright © 2020 Enayatullah Naseri. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

@property NSString *agentsCoverName;
@property NSString *agentsRealName;
@property NSNumber *agentsAccessLevel;
@property NSNumber *agentsCompromised;

- (instancetype) initWithAgentsCoverName: (NSString *) agentsCoverName agentsRealName: (NSString *) agentsRealName agentsAccessLevel: (int) agentsAccessLevel agentsCompromised: (BOOL) agentsCompromised;


@end

NS_ASSUME_NONNULL_END

