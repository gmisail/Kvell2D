package kvell2D;

import kha.Scheduler;
import kha.Framebuffer;
import kha.System;
import kha.Scaler;
import kha.Assets;

import kha.Image;
import kha.Font;
import kha.graphics2.Graphics;

import kvell2D.Time;

class Engine{

	public var fps:Int = 60;
	public var width:Int = 800;
	public var height:Int = 600;
	public var title:String = "Kvell2D Basic";
	
	private var _currentScene:Scene;
	
	private var _begin:Void->Void;
	private var _render:Void->Void;
	private var _update:Void->Void;

	/* components */
	private var _time:Time;
	
	public var buffer:Image;
	
	public function new(){}

	public function start(game:Game){
		System.init({title: this.title, width: this.width, height: this.height}, function() {
			Assets.loadEverything(function(){
				
			
				_begin = game.begin;
				_render = game.render;
				_update = game.update;
			
				buffer = Image.createRenderTarget(width, height);
			
				Kvell2D.init();	
				_time = new Time();
			
				
				begin();
			
				
				System.notifyOnRender(render);
				Scheduler.addTimeTask(update, 0, 1 / fps);
			});
		});
	}
	
	/* kvell2d options */
	
	public function setScreenSize(width:Int, height:Int){
		this.width = width;
		this.height = height;
	}
	
	public function setTitle(newTitle:String){
		this.title = newTitle;	
	}

	/* update & render managers */
	
	function begin():Void{
		_begin();

	}

	function update(): Void {
		_time.update();
		_update();
	}

	function render(framebuffer: Framebuffer): Void {
		var _graphics = buffer.g2;

		_graphics.begin();		
		_render();
		_graphics.end();
		
		framebuffer.g2.begin();
		Scaler.scale(buffer, framebuffer, System.screenRotation);
		framebuffer.g2.end();
	}
	
	/* scene manager */
	
	public function setScene(scene:Scene){
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