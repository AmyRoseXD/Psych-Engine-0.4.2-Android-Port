local allowCountdown = false
local xx = 420.95;
local yy = 313;
local xx2 = 952.9;
local yy2 = 350;
local ofs = 30;
local followchars = true;

function onCreate()
    addCharacterToList('knucklesExe', 'dad');
    addCharacterToList('xenophane', 'dad');
    addCharacterToList('xenophane-flip', 'dad');
    addCharacterToList('eggman', 'dad');
    addCharacterToList('flippedBf', 'boyfriend');
    addCharacterToList('bf-perspectiveLeft', 'boyfriend');
    addCharacterToList('bf-perspectiveRight', 'boyfriend');
end

function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.1);
		allowCountdown = true;
		startCountdown();
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
		setObjectCamera('blackscreen', 'hud');
		addLuaSprite('blackscreen', true);
		makeLuaSprite('circle', 'CircleTripleTrouble', 777, 0);
		setObjectCamera('circle', 'hud');
		addLuaSprite('circle', true);
		makeLuaSprite('text', 'TextTripleTrouble', -1100, 0);
		setObjectCamera('text', 'hud');
		addLuaSprite('text', true);
		runTimer('appear', 0.6, 1);
		runTimer('fadeout', 1.9, 1);
	elseif tag == 'appear' then
		doTweenX('circletween', 'circle', 0, 0.5, 'linear');
		doTweenX('texttween', 'text', 0, 0.5, 'linear');
	elseif tag == 'fadeout' then
		doTweenAlpha('circlefade', 'circle', 0, 1, 'linear');
		doTweenAlpha('textfade', 'text', 0, 1, 'linear');
		doTweenAlpha('blackfade', 'blackscreen', 0, 1, 'linear');
	end
end

function onUpdate()
	if dadName == 'tails' then
		xx = 450
		yy = 550
	end
	if dadName == 'eggman' then
		xx = 450
		yy = 500
	end
	if dadName == 'knucklesExe' then
		xx = 1500
		yy = 620
	end
	if dadName == 'xenophane' then
		xx = 500
		yy = 480
	end
	if dadName == 'xenophane-flip' then
		xx = 1400
		yy = 480
	end
	if boyfriendName == 'bf' then
		xx2 = 800
		yy2 = 650
	end
	if boyfriendName == 'bf-perspectiveRight' then
		xx2 = 920
		yy2 = 500
	end
	if boyfriendName == 'bf-perspectiveLeft' then
		xx2 = 980
		yy2 = 500
	end
	if boyfriendName == 'flippedBf' then
		xx2 = 1100
		yy2 = 650
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end