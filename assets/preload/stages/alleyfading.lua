function onCreate() 
    makeLuaSprite('back', 'gar/garStageday', -500, -170)
    addLuaSprite('back')

    makeLuaSprite('front', 'gar/garStage', -500, -200)
    addLuaSprite('front')

    makeLuaSprite('corpse', 'gar/gardead_day', -230, 540)
    addLuaSprite('corpse')

    makeLuaSprite('0gei','gar/effect')
    setGraphicSize('0gei',1280,720)
	setObjectCamera('0gei','camHud')
	updateHitbox('0gei')
    setBlendMode('0gei','add')

    addLuaSprite('0gei')

    makeLuaSprite('eff','gar/asfde5r4yt54', 0, 0)
	setGraphicSize('eff',1280,720)
	setObjectCamera('eff','camHud')
	updateHitbox('eff')



    addLuaSprite('eff')


    close(true)
end