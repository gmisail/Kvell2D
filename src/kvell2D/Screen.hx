package kvell2D;

import kha.System;
import kha.Color;
import kha.math.Vector2;

class Screen{
	
	public var width:Int;
	public var height:Int;

	// used for scaling the view, i.e. scaling 320x240 to 640x480
	public var drawWidth:Int;
	public var drawHeight:Int;

	public var title:String = "Kvell";

	public var color:Color = Color.Black;

	public function new(){

	}

	public function setSize(width:Int, height:Int, ?drawWidth:Int = null, ?drawHeight:Int = null){
		this.width = width;
		this.height = height;
		if(drawWidth == null){
			this.drawWidth = this.width;
		}else{
			this.drawWidth = drawWidth;
		}
		
		if(drawHeight == null){
			this.drawHeight = this.height;
		}else{
			this.drawHeight = drawHeight;
		}
	}

	public function getWidth():Int{
		return System.windowWidth();
	}
	
	public function getHeight():Int{
		return System.windowHeight();
	}

	public function setColor(color:Int){
		this.color = Color.fromValue(color);
	}

	public function setTitle(newTitle:String){
		this.title = newTitle;	
	}

	public function center():Vector2{
		return new Vector2(this.width / 2, this.height / 2);
	}

}