function onCreate() 
    precacheImage('gar/GAR_CUTSCENE')
    makeLuaSprite('back', 'gar/garStagebgAlt', -500, -170)
    addLuaSprite('back')

    makeAnimatedLuaSprite('smoke', 'gar/garSmoke', -500, -570)
    addAnimationByPrefix('smoke', 'smokey', 'smokey', 24, true)
    objectPlayAnimation('smoke', 'smokey', true)
    setProperty('smoke.alpha', 0.7)
    setGraphicSize('smoke', math.floor(getProperty('smoke.width') * 1.7))
	setBlendMode('smoke','add')
    addLuaSprite('smoke')

    makeLuaSprite('eff2','gar/multiply', 0, 0)
	setGraphicSize('eff2',1280,720)
	setObjectCamera('eff2','camHud')
	updateHitbox('eff2')
	setBlendMode('eff2','multiply')

    makeLuaSprite('eff','gar/vineta', 0, 0)
	setGraphicSize('eff',1280,720)
	setObjectCamera('eff','camHud')
	updateHitbox('eff')
	setBlendMode('eff','multiply')

    makeLuaSprite('eff3','gar/lamps2', 0, 0)
	setGraphicSize('eff3',1280,720)
	setObjectCamera('eff3','camHud')
	updateHitbox('eff3')
	setBlendMode('eff3','add')

    makeLuaSprite('citylight','gar/add2', -500, -170)
	setBlendMode('citylight','add')

    makeLuaSprite('front', 'gar/garStage', -500, -200)
    addLuaSprite('front')

    makeLuaSprite('corpse', 'gar/gardead', -230, 540)
    addLuaSprite('corpse')

    makeAnimatedLuaSprite('smoke2', 'gar/garSmoke', -500, -350)
    addAnimationByPrefix('smoke2', 'smokey', 'smokey', 24, true)
    objectPlayAnimation('smoke2', 'smokey', true)
    setProperty('smoke2.alpha', 0.3)
    setGraphicSize('smoke2', math.floor(getProperty('smoke2.width') * 1.7))
setBlendMode('smoke2','add')
    addLuaSprite('smoke2', true)
    addLuaSprite('citylight',false)
    addLuaSprite('eff2',true);

    addLuaSprite('eff',true);
    close(true)
end