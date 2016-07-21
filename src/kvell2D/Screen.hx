package kvell2D;

import kha.System;
import kha.Color;
import kha.math.Vector2;

class Screen{
	
	@:isVar
	public var width(get, set):Int;
	
	@:isVar
	public var height(get, set):Int;

	// used for scaling the view, i.e. scaling 320x240 to 640x480
	public var drawWidth:Int;
	public var drawHeight:Int;

	@:isVar
	public var title(get, set):String;
	
	@:isVar
	public var color(get, set):Color;
	
	@:isVar
	public var center(get, null):Vector2;

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

	public function set_width(w){
		this.width = w;
		
		return width;
	}

	public function get_width(){
		return width;
	}
	
	public function set_height(h){
		this.height = h;
		
		return height;
	}
		
	public function get_height():Int{
		return height;
	}

	public function get_color(){
		return color;
	}

	public function set_color(color){
		this.color = color;
		
		return color;
	}

	public function set_title(title){
		this.title = title;	
		
		return title;
	}
	
	public function get_title(){
		return title;
	}
	
	/* SCREEN UTILITY / EASE FUNCTIONS */
	
	public function get_center(){
		return new Vector2(width / 2, height / 2);
	}

}