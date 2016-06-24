package kvell2D;

import kha.Scheduler;

class Time{
	
	public static var delta:Float;
	public var last:Float;

	public function new(){
		reset();
	}

	public function reset(){
		last = Scheduler.time();
		delta = 0;
	}

	public function update(){
		var current = Scheduler.time();
    	delta = current - last;
    	last = current;
	}

}