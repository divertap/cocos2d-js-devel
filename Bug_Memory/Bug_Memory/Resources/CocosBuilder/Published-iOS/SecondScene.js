//
// SecondScene class
//
var SecondScene = function(){};

// Create callback for button
SecondScene.prototype.onCleanTextureCachePressed = function()
{	
    cc.log('Remove');
    cc.SpriteFrameCache.getInstance().removeUnusedSpriteFrames();
    cc.TextureCache.getInstance().removeUnusedTextures();
};

SecondScene.prototype.onDumpTextureInfoPressed = function()
{	
    cc.log('Dump');
    cc.TextureCache.getInstance().dumpCachedTextureInfo();
};

SecondScene.prototype.onBackPressed = function()
{	
    cc.log('Back');
    var scene = cc.BuilderReader.loadAsScene("MainScene");
    cc.Director.getInstance().replaceScene(scene);
};

SecondScene.prototype.onNextPressed = function()
{	
    cc.log('Next');
    var scene = cc.BuilderReader.loadAsScene("ThirdScene");
    cc.Director.getInstance().replaceScene(scene);
};