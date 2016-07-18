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

	private var fps:Int = 60;
	private var width:Int = 0;
	private var height:Int = 0;
	private var drawWidth:Int;
	private var drawHeight:Int;
	private var title:String = "Kvell2D";
	private var color:Color = Color.fromValue(0x009900);

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
		
		width = Manager.screen.width;
		height = Manager.screen.height;
		drawWidth = Manager.screen.drawWidth;
		drawHeight = Manager.screen.drawHeight;

		if(width == 0 && height == 0){
			Manager.screen.setSize(800, 600);
		}

		System.init({title: "Kvell", width: this.width, height: this.height}, function() {
			Manager.init();

			camera = new Camera();
			
			Assets.loadEverything(function(){
				_begin = game.begin;
				_render = game.render;
				_update = game.update;
			
				buffer = Image.createRenderTarget(width, height);		
				
				begin();
				System.notifyOnRender(render);
				Scheduler.addTimeTask(update, 0, 1 / fps);
			});
		});
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