//
//  SecondScene.m
//  Bug_Memory_PureObjC
//
//  Created by Manel Mateos Ramírez on 21/01/13.
//  Copyright 2013 Divertap. All rights reserved.
//

#import "SecondScene.h"
#import "MainScene.h"
#import "ThirdScene.h"
#import "CCBReader.h"

@implementation SecondScene


-(void) onCleanTextureCachePressed: (id) sender
{
    CCLOG(@"Remove");
    [[CCSpriteFrameCache sharedSpriteFrameCache] removeUnusedSpriteFrames];
    [[CCTextureCache sharedTextureCache] removeUnusedTextures];
};

-(void) onDumpTextureInfoPressed: (id) sender
{
    CCLOG(@"Dump");
    [[CCTextureCache sharedTextureCache] dumpCachedTextureInfo];
};

-(void) onBackPressed: (id) sender
{
    CCLOG(@"Back");
    CCScene *scene = [CCBReader sceneWithNodeGraphFromFile:@"MainScene.ccbi"];
    [[CCDirector sharedDirector] replaceScene: scene];
};

-(void) onNextPressed: (id) sender
{
    CCLOG(@"Next");
    CCScene *scene = [CCBReader sceneWithNodeGraphFromFile:@"ThirdScene.ccbi"];
    [[CCDirector sharedDirector] replaceScene: scene];
};

@end
