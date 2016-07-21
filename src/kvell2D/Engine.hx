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
	
	@:isVar
	public var scene(get, set):Scene;
	
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
		
		if(Manager.screen.title == null){
			Manager.screen.title = "Basic";
		}
		
		System.init({title: Manager.screen.title, width: Manager.screen.width, height: Manager.screen.height}, function() {
			Manager.initInput();

			camera = new Camera();
			
			Assets.loadEverything(function(){
				_begin = game.begin;
				_render = game.render;
				_update = game.update;
			
				buffer = Image.createRenderTarget(Manager.screen.width, Manager.screen.height);		
				
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

			_graphics.begin(Manager.screen.color);
			//_graphics.pushTransformation(FastMatrix3.translation(-camera.viewport.x, -camera.viewport.y));		
			_render();
			//_graphics.popTransformation();
			_graphics.end();
		
			framebuffer.g2.begin();
			Scaler.scale(buffer, framebuffer, System.screenRotation);
			framebuffer.g2.end();
		}
	}
	
	/* scene manager */
	
	public function set_scene(scene){
		camera.reset();
		this.scene = scene;
		this.scene.begin();
		
		return scene;
	}
	
	public function get_scene(){
		if(scene == null){
			return new Scene();
		}else{
			return scene;	
		}
	}
	

}