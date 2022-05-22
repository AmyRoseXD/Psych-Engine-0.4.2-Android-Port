function onCreate() 

    makeLuaSprite('eff5','gar/bg multiply', -500, -170)
	setBlendMode('eff5','multiply')

    makeLuaSprite('fg','gar/fg', -500, -170)



    makeLuaSprite('back', 'gar/garStagebg', -500, -170)
    addLuaSprite('back')
    addLuaSprite('eff5',false)
    makeLuaSprite('front', 'gar/garStage', -500, -200)
    addLuaSprite('front')
    addLuaSprite('fg',true)

    makeLuaSprite('eff','gar/vineta', 0, 0)
	setGraphicSize('eff',1280,720)
	setObjectCamera('eff','camHud')
	updateHitbox('eff')
	setBlendMode('eff','multiply')
 

    makeLuaSprite('eff2','gar/multiply', 0, 0)
	setGraphicSize('eff2',1280,720)
	setObjectCamera('eff2','camHud')
	updateHitbox('eff2')
	setBlendMode('eff2','multiply')


    makeLuaSprite('eff3','gar/lamps2', 0, 0)
	setGraphicSize('eff3',1280,720)
	setObjectCamera('eff3','camHud')
	updateHitbox('eff3')
	setBlendMode('eff3','add')

    makeLuaSprite('citylight','gar/add2', -500, -170)
	setBlendMode('citylight','add')

    makeLuaSprite('color','gar/colors lol', 0, 0)
	setGraphicSize('color',1280,720)
	setObjectCamera('color','camHud')
	updateHitbox('color')
	setBlendMode('color','add')


    makeLuaSprite('moonshine','gar/add',0,0)
    setGraphicSize('moonshine',1280,720)
    setObjectCamera('moonshine','camHud')
    updateHitbox('moonshine')
    setBlendMode('moonshine','add')
    addLuaSprite('citylight',false)
    addLuaSprite('color',false);
	addLuaSprite('eff', true);
    addLuaSprite('eff3',true);
    addLuaSprite('eff2',true);

    addLuaSprite('moonshine',true);

    close(true)
end