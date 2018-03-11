package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

 

class PlayState extends FlxState
{
	var sprite:FlxSprite;

	override public function create():Void
	{
		super.create();
		sprite = new FlxSprite();
		sprite.loadGraphic(AssetPaths.ghosty__png);
		sprite.x=FlxG.width/2-sprite.width/2;
		sprite.y=FlxG.height/2-sprite.height/2;
		add(sprite);
		

	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if(FlxG.mouse.overlaps(sprite)){if(FlxG.mouse.pressed){sprite.setPosition(
			FlxG.mouse.getPosition().x-sprite.width/2,FlxG.mouse.getPosition().y-sprite.height/2);}} 
		//capturar teclado
		//if(FlxG.keys.pressed.LEFT)sprite.x--;
		//if(FlxG.keys.pressed.RIGHT)sprite.x++;
	}
}
