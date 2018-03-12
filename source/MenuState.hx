package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;



class MenuState extends FlxState
{
	var buttonStar:FlxSprite;

	override public function create():Void
	{
		super.create();
		buttonStar = new FlxSprite();
		buttonStar.loadGraphic(AssetPaths.);
		buttonStar.x=FlxG.width/2-buttonStar.width/2;
		buttonStar.y=FlxG.height/2-buttonStar.height/2;
		add(buttonStar);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		if(FlxG.mouse.overlaps(buttonStar)){if(FlxG.mouse.pressed){gotonext();}}
		//capturar teclado
		//if(FlxG.keys.pressed.LEFT)ghost.x--;
		//if(FlxG.keys.pressed.RIGHT)ghost.x++;
	}
  function gotonext() : Void {
    FlxG.switchState(new Lvl01());

  }
}
