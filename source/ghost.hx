class Player extends FlxSprite {

  private static inline var ACCELERATION:Int = 320; private static inline var DRAG:Int = 320;
private static inline var GRAVITY:Int = 600; private static inline var JUMP_FORCE:Int = -280; private static inline var WALK_SPEED:Int = 80; private static inline var RUN_SPEED:Int = 140; private static inline var FALLING_SPEED:Int = 300;
      public function new()
      {super(); }
override public function update(elapsed:Float):Void {
          super.update(elapsed);
      }
}
