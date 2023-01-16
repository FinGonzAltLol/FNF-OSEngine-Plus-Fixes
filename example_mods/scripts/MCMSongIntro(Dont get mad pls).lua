--easy script configs (this is kind of stolen, but just modified to an extent.)
IntroTextSize = 30	--Size of the text for the Now Playing thing.
IntroSubTextSize = 24 --size of the text for the Song Name.
IntroTagColor = '0xFFFFA000'	--Color of the tag at the end of the box.
IntroTagWidth = 3	--Width of the box's tag thingy.
--easy script configs

--actual script
function onCreate()

	--the box
	makeLuaSprite('JukeBox', 'songBar', -605-IntroTagWidth, 15)
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	
	--the text for the "Now Playing" bit
	makeLuaText('JukeBoxText', songName, 300, -315-IntroTagWidth, 75)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	addLuaText('JukeBoxText')
	
	--text for the song name
	makeLuaText('JukeBoxSubText', "Now Playing:", 300, -305-IntroTagWidth, 50)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	addLuaText('JukeBoxSubText')
end

--motion functions
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenX('MoveInTwo', 'JukeBox', -170, 1.5, 'BackInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'expoInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'cubeInOut')
	
	runTimer('JukeBoxWait', 4, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutTwo', 'JukeBox', -605, 2.5, 'BackInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'expoInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'cubeInOut')
	end
end

function onUpdate(elapsed)

end

function onUpdatePost(elapsed)

end