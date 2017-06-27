package externs;

import haxe.ds.StringMap;
import pixi.core.textures.Texture;
import pixi.core.display.Container;
import pixi.core.graphics.Graphics;
import pixi.extras.MovieClip;

@:jsRequire("pixi-tiledmap")
extern class PixiTiledMap extends Container {
    function new(map:String);

    public var background:Graphics;
    public var layers:JSStringMap<PixiTiledTileLayer>;
    public var tileSets:Array<PixiTiledTileSet>;
}

extern class PixiTiledTileLayer extends Container {
    public var tiles:Array<PixiTiledTile>;
}

extern class PixiTiledTile extends MovieClip {
    public var tileSet:PixiTiledTileSet;
}

extern class PixiTiledTileSet {
    public var baseTexture:Texture;
    public var textures:Array<Texture>;
}

abstract JSStringMap<T>(Dynamic) {
    @:arrayAccess
    public inline function get(key:String):T {
        return this[cast key];
    }
}
