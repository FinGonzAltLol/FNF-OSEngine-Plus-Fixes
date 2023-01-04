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

class SpecialFeaturesSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Special Features Settings';
		rpcTitle = 'Special Features Menu'; //for Discord Rich Presence

		var option:Option = new Option('Icon Bop',
			'Classic is Psych Engine Icon Bounce, OS is the same but with angles,\n OS+ is different, Gapple is from DNB Gapple Edition,\nMCM is from Mistful Crimson Morning, None is no bop.',
			'iconbops',
			'string',
			'Classic',
			['Classic', 'OS', 'OS+', 'Gapple', 'MCM', 'None']);
		addOption(option);
		
		var option:Option = new Option('Note Skin',
			"What note skin do you prefer for playing?",
			'noteSkinSettings',
			'string',
			'Classic',
			['Classic', 'Circle', 'Bar']);
		addOption(option);

		var option:Option = new Option('Freeplay Style',
			'What should the freeplay text be like?\n D&B Does not have sections',
			'freeplayText',
			'string',
			'Base',
			['Base', 'Center', 'D&B']);
		addOption(option);

		var option:Option = new Option('Scrolling Background on Freeplay',
			"If checked, adds the grid from the title state onto freeplay",
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

		var option:Option = new Option('Time Text Bop',
			'If checked, then the time text will tilt on a beat hit.',
			'timeTextShit',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Smooth Health Bar',
			'If checked, then the healthbar becomes smooth\n kinda like in Indie Cross',
			'smoothHealth',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Show Combo',
			'If checked, the unused combo sprite will be used.',
			'showCombo',
			'bool',
			false);
		addOption(option);

		super();
	}
}