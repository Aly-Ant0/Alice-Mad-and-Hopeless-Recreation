package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxTimer;

using StringTools;

// first time that i code character movement
class Boyfriend extends Character
{
	var controls:Controls;
	public var stunned:Bool = false;
	public var runningMan:Bool = false;
	public var yMin:Float = 0;
	public var yMax:Float = 0;
	public var canRun:Bool = false;

	public function new(x:Float, y:Float, ?char:String = 'bf')
	{
		super(x, y, char, true);
	}

	override function update(elapsed:Float)
	{
		if (curCharacter == 'alice-running' && canRun)
		{
			if (controls.RIGHT)
			{
				velocity.x = 120;
			}
			else 
			{
				velocity.x = 0;
			}
			if (controls.UP)
			{
				velocity.y = -120;
			}
			else if (controls.DOWN)
			{
				velocity.y = 120;
			}
			else
			{
				velocity.y = 0;
			}

			if (y > yMin)
			{
				y = yMin;
			}
			else if (y < yMax)
			{
				y = yMax;
			}
		}

		if (!debugMode)
		{
			if (animation.curAnim.name.startsWith('sing'))
			{
				holdTimer += elapsed;
			}
			else
				holdTimer = 0;

			if (animation.curAnim.name.endsWith('miss') && animation.curAnim.finished && !debugMode)
			{
				playAnim('idle', true, false, 10);
			}

			if (animation.curAnim.name == 'firstDeath' && animation.curAnim.finished)
			{
				playAnim('deathLoop');
			}
		}

		super.update(elapsed);
	}
}
