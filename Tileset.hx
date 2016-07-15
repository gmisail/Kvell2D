package kvell2D;

import kha.Image;
import kha.math.Vector2;

class Tileset{
	
	public var base:Image;
	public var data:Array<Array<Int>>;
	public var tileWidth:Int;
	public var tileHeight:Int;
	public var width:Int;
	public var height:Int;
	public var widthInTiles:Int;
	public var heightInTiles:Int;

	public function new(base:Image, tw:Int, th:Int){
		this.base = base;
		this.tileWidth = tw;
		this.tileHeight = th;
		this.width = base.width;
		this.height = base.height;

		this.widthInTiles = Std.int(width / tileWidth);
		this.heightInTiles = Std.int(height / tileHeight);
		
		var data = [];
		var id = 0;
		for (y in 0...heightInTiles){
            data[y] = [];
            for (x in 0...widthInTiles){
                data[y][x] = id;
                id += 1;
            }
        }

        this.data = data;
	}

	public function getTile(id:Int):Vector2{
		for(y in 0...data[0].length){
			for(x in 0...data.length){
				if(data[y][x] == id){
					return new Vector2(x, y);
				}
			}
		}

		return new Vector2(-1, -1);
	}

}