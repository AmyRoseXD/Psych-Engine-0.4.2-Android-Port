local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function noteMiss()
	--icons in left corner like... OOF, and healthbar... and bf icon
	setProperty('iconMisses.color', getColorFromHex('5f1ea4'))
	doTweenColor('iconMisses', 'iconMisses', 'FFFFFF', 0.4, 'linear')
	
	setProperty('iconScore.color', getColorFromHex('5f1ea4'))
	doTweenColor('iconScore', 'iconScore', 'FFFFFF', 0.4, 'linear')
	
	setProperty('iconRating.color', getColorFromHex('5f1ea4'))
	doTweenColor('iconRating', 'iconRating', 'FFFFFF', 0.4, 'linear')

	setProperty('healthBar.color', getColorFromHex('5f1ea4'))
	doTweenColor('healthBar', 'healthBar', 'FFFFFF', 0.4, 'linear')

	setProperty('iconP1.color', getColorFromHex('5f1ea4'))
	doTweenColor('iconP1', 'iconP1', 'FFFFFF', 0.4, 'linear')

	--make bf miss animations cool
	setProperty('boyfriend.color', getColorFromHex('0000FF'))
	doTweenColor('bfColorTween', 'boyfriend', 'FFFFFF', 0.4, 'linear')
end