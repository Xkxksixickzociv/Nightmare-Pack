local alpha = 0
local angle = 0

function onCreate()
 
   makeAnimatedLuaSprite('street','x nightmare street/street',-1000,-500)
   addAnimationByPrefix('street','first','street first',9,true)
   addAnimationByPrefix('street','second','street second',9,true)
   addLuaSprite('street',false)
   scaleObject('street',1.3,1.3);
   objectPlayAnimation('street','first')


--------------------------------------------------------------------------------

   makeLuaSprite('N','x nightmare street/N',-100,-300)
   addLuaSprite('N',false)
   setObjectCamera('N', 'other');
   setLuaSpriteScrollFactor('N',0,0)
   scaleObject('N',3.3,3);

end


function onCreatePost()

 setProperty('effect.alpha',0)

 setProperty('fire1.alpha',0)
 setProperty('fire.alpha',0)

 setProperty('N.alpha',0)

 setProperty('gf.alpha',0)

end


function onStepHit()

 if curStep == 9999999 then

 setProperty('effect.alpha',0.4)
 cameraShake('camGame',10, 10)
	
 end


 if curStep == 999999 then
  --doTweenColor('bfColorTween', 'boyfriend', '333c46', 0.6, 'linear')
 end

 if curStep == 9999999 then

  --doTweenZoom('zoomin','camHUD', '0.5', 0.1, 'linear')

 end



 if curStep == 999999 then

   objectPlayAnimation('street','second')
   setProperty('effect.alpha',1)


 end

 if curStep == 9999999 then

    doTweenAlpha('camefire','fire', '1',17, 'linear')
    doTweenAlpha('camefire1','fire1', '1',17, 'linear')

 end

 if curStep == 99999999 then

 setProperty('N.alpha',1)

 end

end

