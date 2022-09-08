function onEvent(name,value1,value2)


 if name == 'gayflash' then

        if value2 == '1' then

	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'ffffff')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
              setObjectCamera('flash', 'hud')
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw1','flash',0,value1,'linear')

        elseif value2 == '2' then

	   makeLuaSprite('flash1', '', 0, 0);
        makeGraphic('flash1',1280,720,'ff0000')
	      addLuaSprite('flash1', true);
	      setLuaSpriteScrollFactor('flash1',0,0)
              setObjectCamera('flash1', 'hud')
	      setProperty('flash1.scale.x',2)
	      setProperty('flash1.scale.y',2)
	      setProperty('flash1.alpha',0)
		setProperty('flash1.alpha',1)
		doTweenAlpha('flTw2','flash1',0,value1,'linear')

        elseif value2 == '3' then
        
        makeLuaSprite('flash2', '', 0, 0);
        makeGraphic('flash2',1280,720,'f1ad27')
	      addLuaSprite('flash2', true);
	      setLuaSpriteScrollFactor('flash2',0,0)
              setObjectCamera('flash2', 'hud')
	      setProperty('flash2.scale.x',2)
	      setProperty('flash2.scale.y',2)
	      setProperty('flash2.alpha',0)
		setProperty('flash2.alpha',1)
		doTweenAlpha('flTw3','flash2',0,value1,'linear')

       elseif value2 == '4' then

       makeLuaSprite('flash3', '', 0, 0);
        makeGraphic('flash3',1280,720,'308b4e')
	      addLuaSprite('flash3', true);
	      setLuaSpriteScrollFactor('flash3',0,0)
              setObjectCamera('flash3', 'hud')
	      setProperty('flash3.scale.x',2)
	      setProperty('flash3.scale.y',2)
	      setProperty('flash3.alpha',0)
		setProperty('flash3.alpha',1)
		doTweenAlpha('flTw4','flash3',0,value1,'linear')

 end
    end
       end