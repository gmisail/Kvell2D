package kvell2D.graphics;

import kha.Image;

class Tilemap extends Object{
	
	private var data:Array<Array<Int>>;
	private var tileset:Tileset;
	private var tilesetImage:Image;
	private var rows:Int = 0;
	private var columns:Int = 0;
	private var tileWidth:Int = 0;
	private var tileHeight:Int = 0;

	public function new(data:Dynamic, tilesetImage:Image, tileWidth:Int, tileHeight:Int){
		super();

		this.data = load(data);
		this.rows = this.data[0].length;
		this.columns = this.data.length;
		this.tilesetImage = tilesetImage;
		this.tileWidth = tileWidth;
		this.tileHeight = tileHeight;
		this.transform.width = this.columns * tileWidth;
		this.transform.height = this.rows * tileHeight;
		this.tileset = new Tileset(tilesetImage, tileWidth, tileHeight);
	}

	override public function render(i:Image){
		super.render(i);

		var g = i.g2;

		for(y in 0...data[0].length){
			for(x in 0...data.length){
				var id = data[x][y];
				var tile = tileset.getTile(id);

				if(y * tileHeight < 0){
					return;
				}
				
				if(x * tileWidth < 0){
					return;
				}
				
				g.drawSubImage(tilesetImage, y * tileHeight, x * tileWidth, tile.x * tileWidth, tile.y * tileHeight, tileWidth, tileHeight);
			}
		}
	}

	private function load(data:Dynamic):Array<Array<Int>>{
		if(Std.is(data, String)){
			return loadFromString(data);	
		}else{
			return loadFromArray(data);
		}
	}

	private function loadFromArray(data:Array<Array<Int>>):Array<Array<Int>>{
		this.data = data;
		return data;
	}

	private function loadFromString(input:String):Array<Array<Int>>{
		var row:Array<String> = input.split("\n");
		var rows = row.length;
		var col:Array<String>;
		var cols:Int;

		//initalize blank array2d
		data = new Array<Array<Int>>();
		//create new array and return that array

		for (y in 0...rows){
			col = row[y].split(",");
			cols = col.length;
			data[y] = [];
			for (x in 0...cols){
				data[y][x] = Std.parseInt(col[x]);
			}
		}
	
		loadFromArray(data);
		return data;
	}

	public function getColumns():Int{
		return columns;
	}

	public function getRows():Int{
		return rows;
	}
		
	public function setTile(x:Int, y:Int, tile:Int){
		data[y][x] = tile;
	}
	
	public function getTile(x:Int, y:Int):Int{
		return data[y][x];
	}

}