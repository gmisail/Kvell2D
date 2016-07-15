package kvell2D;

import kha.Scheduler;

class Time{
	
	public var delta:Float;
	public var last:Float;
	public var fps:Int;

	private var times:Array<Float>;

	public function new(){
		times = []; 
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

    	times.push(current);
		
		while (times[0] < current - 1)
			times.shift();
		
		fps = times.length;
	}

}