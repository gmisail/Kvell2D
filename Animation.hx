package kvell2D;

import kha.Image;

class Animation{
	
	public var baseImg:Image;

	public var tileWidth:Int;
	public var tileHeight:Int;

	public var widthInTiles:Int;
	public var heightInTiles:Int;
	public var numberOfTiles:Int;



	public function new(baseImg:Image, tileWidth:Int, tileHeight:Int){
		this.baseImg = baseImg;
		this.tileWidth = tileWidth;
		this.tileHeight = tileHeight;

		this.widthInTiles = Std.int(baseImg.width / tileWidth);
		this.heightInTiles = Std.int(baseImg.height / tileHeight);
		this.numberOfTiles = widthInTiles * heightInTiles;

	}



}