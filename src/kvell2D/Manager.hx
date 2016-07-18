package kvell2D;

import kvell2D.input.Mouse;
import kvell2D.input.Keyboard;
import kvell2D.physics.Physics;
import kvell2D.debug.Log;
import kvell2D.audio.Audio;
import kvell2D.math.Random;
import kvell2D.assets.File;

class Manager{
	
	public static var engine = new Engine();
	public static var keyboard = new Keyboard();
	public static var mouse = new Mouse();
	public static var physics = new Physics();
	public static var time = new Time();
	public static var log = new Log();
	public static var audio = new Audio();
	public static var random = new Random();
	public static var screen = new Screen();
	public static var file = new File();
	
	public function new(){
		
	}
	
	public static function init(){
		keyboard.get();
		mouse.get();
	}
	
}