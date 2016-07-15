package kvell2D;

import kha.Scheduler;
import kha.Framebuffer;
import kha.System;
import kha.Scaler;
import kha.Assets;
import kha.Color;

import kha.Image;
import kha.Font;
import kha.math.FastMatrix3;
import kha.graphics2.Graphics;

import kvell2D.Time;

class Engine{

	public var fps:Int = 60;
	public var width:Int = 0;
	public var height:Int = 0;
	public var drawWidth:Int;
	public var drawHeight:Int;
	public var title:String = "Kvell2D";
	public var color:Color = Color.fromValue(0x009900);

	private var _currentScene:Scene;
	
	private var _begin:Void->Void;
	private var _render:Void->Void;
	private var _update:Void->Void;
	
	public var buffer:Image;
	public var camera:Camera;

	//flags
	public var visible:Bool = true;
	public var alive:Bool = true;
	
	public function new(){}

	public function start(game:Game){
		if(width == 0 && height == 0){
			setSize(800, 600);
		}
		
		System.init({title: "Yo", width: this.width, height: this.height}, function() {
			
			camera = new Camera();
			
			Assets.loadEverything(function(){
				_begin = game.begin;
				_render = game.render;
				_update = game.update;
			
				buffer = Image.createRenderTarget(width, height);
			
				Manager.init();				
				
				begin();
				System.notifyOnRender(render);
				Scheduler.addTimeTask(update, 0, 1 / fps);
			});
		});
	}
	
	/* kvell2d options */

	
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

	public function setColor(color:Int){
		this.color = Color.fromValue(color);
	}

	public function getWidth():Int{
		return System.windowWidth();
	}
	
	public function getHeight():Int{
		return System.windowHeight();
	}

	public function setTitle(newTitle:String){
		this.title = newTitle;	
	}

	/* update & render managers */
	
	function begin():Void{
		_begin();

	}


	function update(): Void {
		Manager.time.update();

		
		if(alive){
			//camera.update();
			_update();
		}
	}

	function render(framebuffer: Framebuffer): Void {
		if(visible){
			var _graphics = buffer.g2;

			_graphics.begin(color);
			_graphics.pushTransformation(FastMatrix3.translation(-camera.viewport.x, -camera.viewport.y));		
			_render();
			_graphics.popTransformation();
			_graphics.end();
		
			framebuffer.g2.begin();
			Scaler.scale(buffer, framebuffer, System.screenRotation);
			framebuffer.g2.end();
		}
	}
	
	/* scene manager */
	
	public function setScene(scene:Scene){
		camera.reset();
		_currentScene = scene;
		_currentScene.begin();
	}
	
	public function getScene():Scene{
		if(_currentScene == null){
			return new Scene();
		}else{
			return _currentScene;	
		}
	}
	

}