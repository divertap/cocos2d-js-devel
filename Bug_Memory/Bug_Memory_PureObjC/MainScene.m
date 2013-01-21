//
//  MainScene.m
//  Bug_Memory_PureObjC
//
//  Created by Manel Mateos Ramírez on 21/01/13.
//  Copyright 2013 Divertap. All rights reserved.
//

#import "MainScene.h"
#import "SecondScene.h"
#import "CCBReader.h"

@implementation MainScene

- (void) didLoadFromCCB {
    CCLOG(@"%@.didLoadFromCCB",NSStringFromClass([self class]));
}

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

};

-(void) onNextPressed: (id) sender
{
    CCLOG(@"Next");
    CCScene *scene = [CCBReader sceneWithNodeGraphFromFile:@"SecondScene.ccbi"];
    [[CCDirector sharedDirector] replaceScene: scene];
}

-(void) onDump: (id) sender {
    CCLOG(@"Hola");
}

@end
