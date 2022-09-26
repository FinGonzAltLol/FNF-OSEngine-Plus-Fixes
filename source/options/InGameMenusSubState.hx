package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import ColorblindFilters;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class InGameMenusSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Menu Settings';
		rpcTitle = 'Menu Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Freeplay Style',
			'What should the freeplay text be like\n D&B Does not have sections',
			'freeplayText',
			'string',
			'Base',
			['Base', 'Center', 'D&B']);
		addOption(option);

		var option:Option = new Option('Freeplay Zoom',
			"If checked, the camera will zoom on beat in Freeplay (not working)",
			'freeplayZoom',
			'bool',
			true);
		option.defaultValue = true;
		addOption(option);

		var option:Option = new Option('Scrolling Background on Freeplay',
			"If checked, adds the grid from the title state onto freeplay\n Yeah",
			'freeScroll',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Time Based Main Menu Background',
			'If checked, the background color of the main menu depends on the time of day.',
			'themedmainmenubg',
			'bool',
			false);
		option.defaultValue = false;
		addOption(option);

		var option:Option = new Option('Chart Editor Autosave',
			'If checked, enables autosaving charts in chart editor.',
			'autosavecharts',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('AutoSave Interval',
			'Interval for chart editor autosaves in minutes',
			'autosaveInterval',
			'int',
			5);
		option.scrollSpeed = 5;
		option.minValue = 1;
		option.maxValue = 15;
		option.changeValue = 1;
		option.displayFormat = '%v Minutes';
		addOption(option);

		/*
		var option:Option = new Option('Auto Title Skip',
			'If checked, automatically skips the title state.',
			'autotitleskip',
			'bool',
			false);
		option.defaultValue = false;
		addOption(option);
		*/

		super();
	}
}