package kvell2D.util;

class TilemapUtil{
	
	public function new(){
		
	}
	
	public static function fill(id:Int, w:Int, h:Int):Array<Array<Int>>{
		var m = [];
		
		for(x in 0...w){
			m[x] = [];
			for(y in 0...h){
				m[x][y] = id;
			}
		}
		
		return m;
	}
	
}