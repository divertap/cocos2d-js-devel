//
// ThirdScene class
//
var ThirdScene = function(){};

// Create callback for button
ThirdScene.prototype.onCleanTextureCachePressed = function()
{	
    cc.log('Remove');
    cc.TextureCache.getInstance().removeUnusedTextures();
};

ThirdScene.prototype.onDumpTextureInfoPressed = function()
{	
    cc.log('Dump');
    cc.TextureCache.getInstance().dumpCachedTextureInfo();
};

ThirdScene.prototype.onBackPressed = function()
{	
    cc.log('Back');
    var scene = cc.BuilderReader.loadAsScene("SecondScene");
    cc.Director.getInstance().replaceScene(scene);
};

ThirdScene.prototype.onNextPressed = function()
{	
    cc.log('Next');
};