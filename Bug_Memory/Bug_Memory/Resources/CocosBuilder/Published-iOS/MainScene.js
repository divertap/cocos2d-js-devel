//
// MainScene class
//
var MainScene = function(){};

// Create callback for button
MainScene.prototype.onCleanTextureCachePressed = function()
{	
    cc.log('Remove');
    cc.SpriteFrameCache.getInstance().removeUnusedSpriteFrames();
    cc.TextureCache.getInstance().removeUnusedTextures();
};

MainScene.prototype.onDumpTextureInfoPressed = function()
{	
    cc.log('Dump');
    cc.TextureCache.getInstance().dumpCachedTextureInfo();
};

MainScene.prototype.onBackPressed = function()
{	
    cc.log('Back');
};

MainScene.prototype.onNextPressed = function()
{	
    cc.log('Next');
    var scene = cc.BuilderReader.loadAsScene("SecondScene");
    cc.Director.getInstance().replaceScene(scene);
};