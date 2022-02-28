local t = 0
local s = 0

function onCreate()
    makeAnimatedLuaSprite('static', 'exep3/Phase3Static', 0, 0)
    addAnimationByPrefix('static', 'flash', 'Phase3Static instance 1', 24, false)
    setGraphicSize('static', getProperty('static.width') * 4)
    setProperty('static.alpha', 0.3)
    setProperty('static.visible', false)
    addLuaSprite('static', true)
    setObjectCamera('static', 'other')

    makeLuaSprite('bg', 'exep3/Glitch', -621, -365)
    addLuaSprite('bg', false)
    setGraphicSize('bg', getProperty('bg.width') * 1.2)

    makeLuaSprite('screamerTails', 'Tails', 0, 0)
    setObjectCamera('screamerTails', 'other')
    setProperty('screamerTails.visible', false)
    addLuaSprite('screamerTails', true)

    makeLuaSprite('screamerKnuckles', 'Knuckles', 0, 0)
    setObjectCamera('screamerKnuckles', 'other')
    setProperty('screamerKnuckles.visible', false)
    addLuaSprite('screamerKnuckles', true)

    makeLuaSprite('screamerEggman', 'Eggman', 0, 0)
    setObjectCamera('screamerEggman', 'other')
    setProperty('screamerEggman.visible', false)
    addLuaSprite('screamerEggman', true)

    makeAnimatedLuaSprite('daSTAT', 'daSTAT', 0, 0)
    addAnimationByPrefix('daSTAT', 'STAT', 'staticFLASH', 24, true)
    scaleObject('daSTAT', 4, 4)
    setObjectCamera('daSTAT', 'other')
    setProperty('daSTAT.alpha', 0.3)
    setProperty('daSTAT.visible', false)
    addLuaSprite('daSTAT', true)

    makeLuaSprite('deathsentence', 'black-sun', -730, -400)
    setObjectCamera('deathsentence', 'other')
    scaleObject('deathsentence', 2.2, 2.2)
    setProperty('deathsentence.visible', false)
    addLuaSprite('deathsentence', true)

    makeAnimatedLuaSprite('plasticShit', 'exep3/NewTitleMenuBG', -500, -400)
    addAnimationByPrefix('plasticShit', 'ImGonnaDie', 'TitleMenuSSBG instance 1', 24, true)
    setProperty('plasticShit.visible', false)
    addLuaSprite('plasticShit', false)
    scaleObject('plasticShit', 6.5, 5)

    makeLuaSprite('trees1', 'exep3/Trees', -607, -401)
    addLuaSprite('trees1')
    setScrollFactor('trees1', 0.95, 1)
    setGraphicSize('trees1', getProperty('trees1.width') * 1.2)

    makeLuaSprite('trees2', 'exep3/Trees2', -623, -410)
    setGraphicSize('trees2', getProperty('trees2.width') * 1.2)
    addLuaSprite('trees2', false)

    makeLuaSprite('grass', 'exep3/Grass', -630, -266)
    addLuaSprite('grass', false)
    setGraphicSize('grass', getProperty('grass.width') * 1.2)
end

function onCreatePost()
    setProperty('gf.alpha', 0);
    triggerEvent('Opponent Notes Left Side', 'a', 's')
end

function onSongStart()
	setProperty('static.visible', true)
end

function onUpdate(elapsed)
    health = getProperty('health')
    if health < 0.02 then
	setProperty('deathsentence.visible', true)
    end

    if getProperty('static.animation.curAnim.finished') and getProperty('static.animation.curAnim.name') == 'flash' then
        setProperty('static.alpha', 0)
    else
        setProperty('static.alpha', 0.7)
    end
end