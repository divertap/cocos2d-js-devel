//
//  ThirdScene.m
//  Bug_Memory_PureObjC
//
//  Created by Manel Mateos Ramírez on 21/01/13.
//  Copyright 2013 Divertap. All rights reserved.
//

#import "ThirdScene.h"
#import "SecondScene.h"
#import "CCSpriteFrameCache.h"
#import "CCTextureCache.h"
#import "CCBReader.h"
#import "MainScene.h"

@implementation ThirdScene

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	ThirdScene *layer = [ThirdScene node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
	if( (self=[super init]) ) {
		[[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"tortugascene-background.plist"];
        CCSprite *sprite = [CCSprite spriteWithSpriteFrameName:@"TORTUGA_fondo_1024X768_C0Y0_1024X768.jpg"];
        sprite.position = ccp( [CCDirector sharedDirector].winSize.width/2,[CCDirector sharedDirector].winSize.height/2);
        [self addChild:sprite];
        
        CCMenuItem *dump = [CCMenuItemImage itemWithNormalImage:@"dump.png" selectedImage:@"dump-down.png"];
        [dump setTarget:self selector:@selector(onDumpTextureInfoPressed:)];
        CCMenu *menu = [CCMenu menuWithItems:dump, nil];
		[menu setPosition:ccp([CCDirector sharedDirector].winSize.width/4,3*[CCDirector sharedDirector].winSize.height/4)];
        [self addChild:menu];
        
        CCMenuItem *remove = [CCMenuItemImage itemWithNormalImage:@"remove.png" selectedImage:@"remove-down.png"];
        [remove setTarget:self selector:@selector(onCleanTextureCachePressed:)];
        menu = [CCMenu menuWithItems:remove, nil];
		[menu setPosition:ccp(3*[CCDirector sharedDirector].winSize.width/4,3*[CCDirector sharedDirector].winSize.height/4)];
		[self addChild:menu];
        
        CCMenuItem *back = [CCMenuItemImage itemWithNormalImage:@"back.png" selectedImage:@"back-down.png"];
        [back setTarget:self selector:@selector(onBackPressed:)];
        menu = [CCMenu menuWithItems:back, nil];
        [menu setPosition:ccp([CCDirector sharedDirector].winSize.width/4,[CCDirector sharedDirector].winSize.height/4)];
        [self addChild:menu];
        
//        CCMenuItem *next = [CCMenuItemImage itemWithNormalImage:@"next.png" selectedImage:@"next-down.png"];
//        [next setTarget:self selector:@selector(onNextPressed:)];
//        menu = [CCMenu menuWithItems:next, nil];
//		[menu setPosition:ccp(3*[CCDirector sharedDirector].winSize.width/4,[CCDirector sharedDirector].winSize.height/4)];
//		[self addChild:menu];
        
        
	}
	return self;
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
#ifdef use_ccb
    CCScene *scene = [CCBReader sceneWithNodeGraphFromFile:@"SecondScene.ccbi"];
#else
    CCScene *scene = [SecondScene scene];
#endif
    [[CCDirector sharedDirector] replaceScene: scene];
};

-(void) onNextPressed: (id) sender
{
    CCLOG(@"Next");
};

@end
