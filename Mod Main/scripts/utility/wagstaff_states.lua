local State = GLOBAL.State
local FRAMES = GLOBAL.FRAMES
local EventHandler = GLOBAL.EventHandler
local EQUIPSLOTS = GLOBAL.EQUIPSLOTS
local TimeEvent = GLOBAL.TimeEvent
local ActionHandler = GLOBAL.ActionHandler
local ACTIONS = GLOBAL.ACTIONS
local TheNet = GLOBAL.TheNet
local SpawnPrefab = GLOBAL.SpawnPrefab
local PlayFootstep = GLOBAL.PlayFootstep
local Vector3 = GLOBAL.Vector3
local STRINGS = GLOBAL.STRINGS

local BEAVERVISION_COLOURCUBE =
{
	day = "images/colour_cubes/beaver_vision_cc.tex",
	dusk = "images/colour_cubes/beaver_vision_cc.tex",
	night = "images/colour_cubes/beaver_vision_cc.tex",
	full_moon = "images/colour_cubes/beaver_vision_cc.tex",
}

local function GetRunStateAnim(inst)
	return (inst.sg.statemem.heavy and "heavy_walk")
		or (inst.sg.statemem.sandstorm and "sand_walk")
		or (inst.sg.statemem.groggy and "idle_walk")
		or (inst.sg.statemem.careful and "careful_walk")
		or "run"
end

-- ----------------------------------
-- ------------[[Wilba]]-------------						 --Lov u, bramble bb
-- ----------------------------------
-- local function dropbeard(inst)
--	 local hair = SpawnPrefab("beardhair")
--	 local x,y,z = inst.Transform:GetWorldPosition()
--	 y = y + 2
--	 hair.Transform:SetPosition(x,y,z)
--	 local speed = 1+ math.random()
--	 local angle = math.random()*360
--	 hair.Physics:SetVel(speed*math.cos(angle), 2+math.random()*3, speed*math.sin(angle))
-- end
-- --==Actions==--
-- AddStategraphPostInit("wilson", function(inst)
-- 	local _chop_actionhandler = inst.actionhandlers[ACTIONS.CHOP].deststate
-- 	inst.actionhandlers[ACTIONS.CHOP].deststate = function(inst)
-- 		if inst:HasTag("werewilba") then
--			 return not inst.sg:HasStateTag("gnawing") and "wilba_gnaw" or nil
--		 end
		
-- 		return _chop_actionhandler(inst)
-- 	end
	
-- 	local _mine_actionhandler = inst.actionhandlers[ACTIONS.MINE].deststate
-- 	inst.actionhandlers[ACTIONS.MINE].deststate = function(inst)
-- 		if inst:HasTag("werewilba") then
--			 return not inst.sg:HasStateTag("gnawing") and "wilba_gnaw" or nil
--		 end
		
-- 		return _mine_actionhandler(inst)
-- 	end

-- 	local _hammer_actionhandler = inst.actionhandlers[ACTIONS.HAMMER].deststate
-- 	inst.actionhandlers[ACTIONS.HAMMER].deststate = function(inst)
-- 		if inst:HasTag("werewilba") then
--			 return not inst.sg:HasStateTag("gnawing") and "wilba_gnaw" or nil
--		 end
		
-- 		return _hammer_actionhandler(inst)
-- 	end

-- 	local _dig_actionhandler = inst.actionhandlers[ACTIONS.DIG].deststate
-- 	inst.actionhandlers[ACTIONS.DIG].deststate = function(inst)
-- 		if inst:HasTag("werewilba") then
--			 return not inst.sg:HasStateTag("gnawing") and "wilba_gnaw" or nil
--		 end
		
-- 		return _dig_actionhandler(inst)
-- 	end
-- end)

-- AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.LOAD, "give"))

AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.SPY, "spygoggle"))

--==Actions-Client==--
-- AddStategraphPostInit("wilson_client", function(inst)
-- 	local _chop_actionhandler = inst.actionhandlers[ACTIONS.CHOP].deststate
-- 	inst.actionhandlers[ACTIONS.CHOP].deststate = function(inst)
-- 		if inst:HasTag("werewilba") then
--			 return not inst.sg:HasStateTag("gnawing") and "wilba_gnaw" or nil
--		 end
		
-- 		return _chop_actionhandler(inst)
-- 	end

-- 	local _mine_actionhandler = inst.actionhandlers[ACTIONS.MINE].deststate
-- 	inst.actionhandlers[ACTIONS.MINE].deststate = function(inst)
-- 		if inst:HasTag("werewilba") then
--			 return not inst.sg:HasStateTag("gnawing") and "wilba_gnaw" or nil
--		 end
		
-- 		return _mine_actionhandler(inst)
-- 	end

-- 	local _hammer_actionhandler = inst.actionhandlers[ACTIONS.HAMMER].deststate
-- 	inst.actionhandlers[ACTIONS.HAMMER].deststate = function(inst)
-- 		if inst:HasTag("werewilba") then
--			 return not inst.sg:HasStateTag("gnawing") and "wilba_gnaw" or nil
--		 end
		
-- 		return _hammer_actionhandler(inst)
-- 	end

-- 	local _dig_actionhandler = inst.actionhandlers[ACTIONS.DIG].deststate
-- 	inst.actionhandlers[ACTIONS.DIG].deststate = function(inst)
-- 		if inst:HasTag("werewilba") then
--			 return not inst.sg:HasStateTag("gnawing") and "wilba_gnaw" or nil
--		 end
		
-- 		return _dig_actionhandler(inst)
-- 	end
-- end)

-- AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.LOAD, "give"))

AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.SPY, "spygoggle"))

-- AddStategraphEvent("wilson", 
-- 	EventHandler("transform_werewilba", function(inst, data)
-- 		inst:SetCameraDistance(14)
--		 inst.sg:GoToState("transform_werewilba")
--	 end)
-- )

-- AddStategraphEvent("wilson", 
-- 	EventHandler("transform_wilba", function(inst, data)
--		 inst:SetCameraDistance(14)
--		 inst.sg:GoToState("transform_wilba")
--	 end)
-- )

-- AddStategraphState("wilson", 
-- 	State{
--		 name = "transform_werewilba",
--		 tags = { "busy", "pausepredict", "transform", "nomorph" },

--		 onenter = function(inst)
--			 inst.Physics:Stop()
-- 			inst.werepigCC:set(true)
--			 if inst.components.rider:IsRiding() then
--				 inst.sg:AddStateTag("dismounting")
--				 if inst.components.inventory:IsHeavyLifting() then
--					 inst.components.inventory:DropItem(inst.components.inventory:Unequip(EQUIPSLOTS.BODY), true, true)
--				 end
--				 inst.AnimState:PlayAnimation("fall_off")
--				 inst.SoundEmitter:PlaySound("dontstarve/beefalo/saddle/dismount")
--			 else
--				 inst:SetCameraDistance(14)
				
--				 inst.AnimState:PlayAnimation("transfirm_pre")
				
-- 				inst.SoundEmitter:PlaySound("hamletcharactersound/characters/werewilba/transform_1")
				
--				 inst.components.inventory:DropEquipped(true)
--			 end

--			 inst.components.health:SetInvincible(true)
			
--			 if inst.components.playercontroller ~= nil then
--				 inst.components.playercontroller:RemotePausePrediction()
--				 inst.components.playercontroller:Enable(false)
--			 end
--		 end,

--		 timeline =
--		 {
-- 			TimeEvent(34*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(35*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(36*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(37*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(41*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(42*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(43*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(44*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(48*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(49*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(64*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(65*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(71*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(105*FRAMES, function(inst)
-- 				inst.SoundEmitter:PlaySound("hamletcharactersound/characters/werewilba/bark")
--			 end),
--			 TimeEvent(139*FRAMES, function(inst)
-- 				inst.SoundEmitter:PlaySound("hamletcharactersound/characters/werewilba/breath_out")
--			 end),
--			 TimeEvent(151*FRAMES, function(inst)
--				 inst.SoundEmitter:PlaySound("hamletcharactersound/characters/werewilba/transform_2")
--			 end),
-- 		},
		
--		 events =
--		 {
--			 EventHandler("animover", function(inst)
--				 if inst.AnimState:AnimDone() then
--					 if inst.sg:HasStateTag("dismounting") then
--						 inst.sg:RemoveStateTag("dismounting")
--						 inst.components.rider:ActualDismount()
--						 inst:SetCameraDistance(14)
--						 inst.AnimState:PlayAnimation("transfirm_pre")
--						 inst.components.inventory:DropEquipped(true)
--					 elseif inst.prefab ~= "wilba" or inst.were then
--						 inst.sg:GoToState("idle")
--					 else
--						 inst.WereWilba(inst)
--						 inst.AnimState:PlayAnimation("transfirm_pst")
--						 inst:SetCameraDistance()
--						 inst.sg:RemoveStateTag("transform")
--					 end
--				 end
--			 end),
--		 },

--		 onexit = function(inst)
--			 if inst.sg:HasStateTag("dismounting") then
--				 inst.components.rider:ActualDismount()
--			 elseif inst.sg:HasStateTag("transform") then
--				 inst:SetCameraDistance()
--			 end
-- 			inst.components.health:SetInvincible(false)
			
--			 if inst.components.playercontroller ~= nil then
--				 inst.components.playercontroller:Enable(true)
--			 end
--		 end,
--	 }
-- )

-- AddStategraphState("wilson",
-- 	State{
-- 		name = "transform_wilba",
--		 tags = { "busy", "pausepredict", "transform", "nomorph" },

--		 onenter = function(inst)
--			 inst:SetCameraDistance(14)
--			 inst.Physics:Stop()
			
-- 			inst.werepigCC:set(false)
			
--			 inst.AnimState:PlayAnimation("reform")
			
--			 inst.Wilba(inst)
			
-- 			inst.SoundEmitter:PlaySound("dontstarve/creatures/werepig/transformToPig")
			
-- 			inst.components.health:SetInvincible(true)

--			 if inst.components.playercontroller ~= nil then
--				 inst.components.playercontroller:RemotePausePrediction()
--				 inst.components.playercontroller:Enable(false)
--			 end
--		 end,

--		 timeline = 
--		 {
-- 			TimeEvent(1*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(58*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(59*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--				 dropbeard(inst)
--			 end),
--			 TimeEvent(60*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(61*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(63*FRAMES, function(inst)
--				 dropbeard(inst)
--			 end),
-- 			TimeEvent(65*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(66*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(67*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(68*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(69*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(70*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),	   
--			 TimeEvent(74*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(75*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(76*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(77*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),	   
--			 TimeEvent(92*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),
--			 TimeEvent(93*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(BEAVERVISION_COLOURCUBE)
--			 end),
--			 TimeEvent(99*FRAMES, function(inst)
--				 inst.components.playervision:SetCustomCCTable(nil)
--			 end),   
  
-- 		},
		
--		 events =
--		 {
--			 EventHandler("animover", function(inst)
--				 inst.sg:GoToState("idle")
--			 end),
--		 },

--		 onexit = function(inst)
--			 inst.components.health:SetInvincible(false)
			
--			 inst.components.playercontroller:Enable(true)
--			 if inst.components.playercontroller ~= nil then
--				 inst.components.playercontroller:Enable(true)
--			 end
--			 inst:SetCameraDistance()
--		 end,
--	 }
-- )

-- AddStategraphState("wilson", 
-- 	State{
--		 name = "wilba_gnaw",
--		 tags = { "gnawing", "working" },

--		 onenter = function(inst)
--			 inst.components.locomotor:Stop()
--			 inst.sg.statemem.action = inst:GetBufferedAction()
--			 if inst.atk_2 == true then
-- 				inst.AnimState:PlayAnimation("atk_2_werewilba")
--				 inst.atk_2 = nil
--			 else
-- 				inst.AnimState:PlayAnimation("atk_werewilba")
--				 inst.atk_2 = true
-- 			end
--			 inst.SoundEmitter:PlaySound("hamletcharactersound/characters/werewilba/bark")
--			 inst:AddTag("gnawing")
--		 end,

--		 timeline =
--		 {
-- 			TimeEvent(9 * FRAMES, function(inst)
--				 if inst.sg.statemem.action ~= nil then
--					 local target = inst.sg.statemem.action.target
--					 if target ~= nil and target:IsValid() then
--						 if inst.sg.statemem.action.action == ACTIONS.MINE then
--							 -- SpawnPrefab("mining_fx").Transform:SetPosition(target.Transform:GetWorldPosition())
--							 -- inst.SoundEmitter:PlaySound(target:HasTag("frozen") and "dontstarve_DLC001/common/iceboulder_hit" or "dontstarve/wilson/use_pick_rock")
--							 GLOBAL.PlayMiningFX(inst, target) -- Niko: Modernize the above two lines
--						 elseif inst.sg.statemem.action.action == ACTIONS.HAMMER then
--							 inst.sg.statemem.rmb = true
--							 inst.SoundEmitter:PlaySound("dontstarve/wilson/hit")
--						 elseif inst.sg.statemem.action.action == ACTIONS.DIG then
--							 inst.sg.statemem.rmb = target:HasTag("sign")
--							 SpawnPrefab("shovel_dirt").Transform:SetPosition(target.Transform:GetWorldPosition())
--						 end
--					 end
--				 end
--				 inst:PerformBufferedAction()
--			 end),

--			 TimeEvent(12 * FRAMES, function(inst)
--				 inst.sg:RemoveStateTag("gnawing")
-- 				inst:RemoveTag("gnawing")
--			 end),

--			 TimeEvent(13 * FRAMES, function(inst)
--				 if inst.sg.statemem.action == nil or
--					 inst.sg.statemem.action.action == nil or
--					 inst.components.playercontroller == nil then
--					 return
--				 end
--				 if inst.sg.statemem.rmb then
--					 if not inst.components.playercontroller:IsAnyOfControlsPressed(
--							 GLOBAL.CONTROL_SECONDARY,
--							 GLOBAL.CONTROL_CONTROLLER_ALTACTION) then
--						 return
--					 end
--				 elseif not inst.components.playercontroller:IsAnyOfControlsPressed(
--							 GLOBAL.CONTROL_PRIMARY,
--							 GLOBAL.CONTROL_ACTION,
--							 GLOBAL.CONTROL_CONTROLLER_ACTION) then
--					 return
--				 end
--				 if inst.sg.statemem.action:IsValid() and
--					 inst.sg.statemem.action.target ~= nil and
--					 inst.sg.statemem.action.target.components.workable ~= nil and
--					 inst.sg.statemem.action.target.components.workable:CanBeWorked() and
--					 inst.sg.statemem.action.target.components.workable:GetWorkAction() == inst.sg.statemem.action.action and
--					 GLOBAL.CanEntitySeeTarget(inst, inst.sg.statemem.action.target) then
--					 --No fast-forward when repeat initiated on server
-- 					inst.sg.statemem.action.options.no_predict_fastforward = true
--					 inst:ClearBufferedAction()
--					 inst:PushBufferedAction(inst.sg.statemem.action)
--				 end
--			 end),
--		 },

--		 events =
--		 {
--			 EventHandler("animover", function(inst)
--				 if inst.AnimState:AnimDone() then
--					 inst.sg:GoToState("idle")
--				 end
--			 end),
--		 },

--		 onexit = function(inst)
-- 			inst:RemoveTag("gnawing")
-- 		end,
--	 }
-- )

-- AddStategraphPostInit("wilson", function(inst)
-- 	local _OldAttackState = inst.states["attack"].onenter
-- 	inst.states["attack"].onenter = function(inst)
-- 		local cooldown = inst.components.combat.min_attack_period + .5 * FRAMES
		
-- 		if inst:HasTag("werewilba") then
-- 			-- inst.sg:AddStateTag("busy") -- Niko: Busy tag prevents canceling the attack like you can do with most other attacks in DST, Let's modernize it and maybe add a config for this later?
-- 			if inst.atk_2 == true then
-- 				inst.AnimState:PlayAnimation("atk_2_werewilba")
-- 				inst.atk_2 = nil
-- 			else
-- 				inst.AnimState:PlayAnimation("atk_werewilba")
-- 				inst.atk_2 = true
-- 			end
--			 inst.SoundEmitter:PlaySound("hamletcharactersound/characters/werewilba/bark") -- Niko: Turns out the cause of the sound not playing was a outdated sound trigger
-- 			-- inst.SoundEmitter:PlaySound("dontstarve/characters/werewilba/bark", nil, nil, true)
			
-- 			inst.sg:SetTimeout(cooldown)
			
-- 			if target ~= nil then
--				 inst.components.combat:BattleCry()
--				 if target:IsValid() then
--					 inst:FacePoint(target:GetPosition())
--					 inst.sg.statemem.attacktarget = target
--				 end
--			 end
			
-- 			return
-- 		end

-- 		return _OldAttackState(inst)
-- 	end
	
-- 	-- table.insert(inst.states["attack"].timeline, --For some reason busy tag doesn't go away, let's fix that
-- 	-- 	TimeEvent(13 * FRAMES, function(inst)
-- 	-- 		if inst:HasTag("werewilba") then
-- 	-- 			inst.sg:RemoveStateTag("busy")
-- 	-- 		end
--	 --	 end)
-- 	-- )
	
-- 	local _OldRunState = inst.states["run"].onenter
-- 	inst.states["run"].onenter = function(inst)
-- 		local anim = GetRunStateAnim(inst)
--		 if anim == "run" then
-- 			if inst:HasTag("werewilba") then
-- 				anim = "run_werewilba_loop"
				
-- 				if not inst.AnimState:IsCurrentAnimation(anim) then
-- 					inst.AnimState:PlayAnimation(anim, true)
			
-- 				return
-- 				end
-- 			else
-- 				anim = "run_loop"
-- 			end
-- 		end

-- 		return _OldRunState(inst)
-- 	end
	
-- 	local _OldRowState = inst.states["row"].onenter
-- 	inst.states["row"].onenter = function(inst)
-- 		_OldRowState(inst)
		
-- 		if inst:HasTag("werewilba") then
-- 			if inst.atk_2 == true then
-- 				inst.AnimState:PlayAnimation("atk_2_werewilba")
-- 				inst.atk_2 = nil
-- 			else
-- 				inst.AnimState:PlayAnimation("atk_werewilba")
-- 				inst.atk_2 = true
-- 			end
-- 		end
-- 	end

--	 local OldElectrocute = inst.states["electrocute"].events.animover.fn
--	 inst.states["electrocute"].events.animover.fn = function(inst)
--		 OldElectrocute(inst)
--		 local equipped = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
--		 if equipped and equipped:HasTag("telebrella") then
--			 inst.components.locomotor:SetBufferedAction(nil)
--			 inst.sg:GoToState("telebrella_finish")	  
--		 end
--	 end
-- end)

-- --==States-Client==--
-- AddStategraphState("wilson_client",
-- 	State{
--		 name = "wilba_gnaw",
--		 tags = { "gnawing", "working" },

--		 onenter = function(inst)
--			 inst.components.locomotor:Stop()
--			 if not inst:HasTag("working") then
--				 if inst.atk_2 == true then
-- 					inst.AnimState:PlayAnimation("atk_2_werewilba")
--					 inst.atk_2 = nil
--				 else
-- 					inst.AnimState:PlayAnimation("atk_werewilba")
--					 inst.atk_2 = true
-- 				end
--			 end

--			 inst:PerformPreviewBufferedAction()
--			 inst.sg:SetTimeout(TIMEOUT)
--		 end,

--		 onupdate = function(inst)
--			 if inst:HasTag("working") then
--				 if inst.entity:FlattenMovementPrediction() then
--					 inst.sg:GoToState("idle", "noanim")
--				 end
--			 elseif inst.bufferedaction == nil then
--				 inst.sg:GoToState("idle")
--			 end
--		 end,

--		 ontimeout = function(inst)
--			 inst:ClearBufferedAction()
--			 inst.sg:GoToState("idle")
--		 end,
--	 }
-- )

-- AddStategraphPostInit("wilson_client", function(inst)
-- 	local _OldAttackState = inst.states["attack"].onenter
-- 	inst.states["attack"].onenter = function(inst)
-- 		local cooldown = inst.replica.combat:MinAttackPeriod() + .5 * FRAMES
		
-- 		if inst:HasTag("werewilba") then
-- 			if inst.atk_2 == true then
-- 				inst.AnimState:PlayAnimation("atk_2_werewilba")
-- 				inst.atk_2 = nil
-- 			else
-- 				inst.AnimState:PlayAnimation("atk_werewilba")
-- 				inst.atk_2 = true
-- 			end
-- 			inst.SoundEmitter:PlaySound("dontstarve/characters/werewilba/bark", nil, nil, true)
-- 			cooldown = math.max(cooldown, 16 * FRAMES)
			
-- 			inst.sg:SetTimeout(cooldown)
			
-- 			if target ~= nil then
--				 if target:IsValid() then
--					 inst:FacePoint(target:GetPosition())
--					 inst.sg.statemem.attacktarget = target
--				 end
--			 end
			
-- 			inst:PerformPreviewBufferedAction()
			
-- 			return
-- 		end

-- 		return _OldAttackState(inst)
-- 	end

-- 	local _OldRunState = inst.states["run"].onenter
-- 	inst.states["run"].onenter = function(inst)
-- 		local anim = GetRunStateAnim(inst)
--		 if anim == "run" then
-- 			if inst:HasTag("werewilba") then
-- 				anim = "run_werewilba_loop"
-- 				if not inst.AnimState:IsCurrentAnimation(anim) then
-- 					inst.AnimState:PlayAnimation(anim, true)
			
-- 					return
-- 				end
-- 			else
-- 				anim = "run_loop"
-- 			end
-- 		end

-- 		return _OldRunState(inst)
-- 	end
-- end)

-- ---------------------------------------
--------------[[Wheeler]]--------------
---------------------------------------

-- AddStategraphState("wilson", 
-- 	State{
--		 name = "shoot",
--		 tags = {"attack", "notalking", "abouttoattack", "autopredict"},
		
--		 onenter = function(inst)
--			 local buffaction = inst:GetBufferedAction()
--			 local target = buffaction ~= nil and buffaction.target or nil
--			 local equip = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)

--			 if inst.components.rider:IsRiding() then
--				 inst.Transform:SetFourFaced()
--			 end

--			 inst.components.combat:SetTarget(target)
--			 inst.components.combat:StartAttack()
--			 inst.components.locomotor:Stop()
--			 inst.AnimState:PlayAnimation("hand_shoot")
			
--			 if target ~= nil and target:IsValid() then
--				 inst:FacePoint(target.Transform:GetWorldPosition())
--				 inst.sg.statemem.attacktarget = target
--			 end

--			 if (equip ~= nil and equip.projectiledelay or 0) > 0 then
--				 inst.sg.statemem.projectiledelay = (inst.sg.statemem.chained and 9 or 14) * FRAMES - equip.projectiledelay
--				 if inst.sg.statemem.projectiledelay <= 0 then
--					 inst.sg.statemem.projectiledelay = nil
--				 end
--			 end
--		 end,

--		 onupdate = function(inst, dt)
--			 if (inst.sg.statemem.projectiledelay or 0) > 0 then
--				 inst.sg.statemem.projectiledelay = inst.sg.statemem.projectiledelay - dt
--				 if inst.sg.statemem.projectiledelay <= 0 then
--					 inst:PerformBufferedAction()
--					 inst.sg:RemoveStateTag("abouttoattack")
--				 end
--			 end
--		 end,

--		 timeline =
--		 {
--			 TimeEvent(18 * FRAMES, function(inst)
--				 if not inst.sg.statemem.chained and inst.sg.statemem.projectiledelay == nil then
--					 inst:PerformBufferedAction()
--					 inst.sg:RemoveStateTag("abouttoattack")
--				 end
--			 end),
--		 },

--		 events =
--		 {
--			 EventHandler("equip", function(inst) inst.sg:GoToState("idle") end),
--			 EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end),
--			 EventHandler("animqueueover", function(inst)
--				 if inst.AnimState:AnimDone() then
--					 inst.sg:GoToState("idle")
--				 end
--			 end),
--		 },

--		 onexit = function(inst)
--			 inst.components.combat:SetTarget(nil)
--			 if inst.sg:HasStateTag("abouttoattack") then
--				 inst.components.combat:CancelAttack()
--			 end
--			 if inst.components.rider:IsRiding() then
--				 inst.Transform:SetSixFaced()
--			 end
--		 end,
--	 }
-- )

-- AddStategraphState("wilson_client", 
-- 	State{
--		 name = "shoot",
--		 tags = {"attack", "notalking", "abouttoattack", "autopredict"},
		
--		 onenter = function(inst)
--			 local buffaction = inst:GetBufferedAction()
--			 local target = buffaction ~= nil and buffaction.target or nil
--			 local equip = inst.replica.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
--			 inst.replica.combat:SetTarget(target)
--			 inst.replica.combat:StartAttack()
--			 inst.components.locomotor:Stop()
--			 inst.AnimState:PlayAnimation("hand_shoot")
			
--			 if target ~= nil and target:IsValid() then
--				 inst:FacePoint(target.Transform:GetWorldPosition())
--				 inst.sg.statemem.attacktarget = target
--			 end

--			 if (equip ~= nil and equip.projectiledelay or 0) > 0 then
--				 inst.sg.statemem.projectiledelay = (inst.sg.statemem.chained and 9 or 14) * FRAMES - equip.projectiledelay
--				 if inst.sg.statemem.projectiledelay <= 0 then
--					 inst.sg.statemem.projectiledelay = nil
--				 end
--			 end
--		 end,

--		 onupdate = function(inst, dt)
--			 if (inst.sg.statemem.projectiledelay or 0) > 0 then
--				 inst.sg.statemem.projectiledelay = inst.sg.statemem.projectiledelay - dt
--				 if inst.sg.statemem.projectiledelay <= 0 then
--					 inst:PerformPreviewBufferedAction()
--					 inst.sg:RemoveStateTag("abouttoattack")
--				 end
--			 end
--		 end,

--		 timeline =
--		 {
--			 TimeEvent(18 * FRAMES, function(inst)
--				 if not inst.sg.statemem.chained and inst.sg.statemem.projectiledelay == nil then
--					 inst:PerformPreviewBufferedAction()
--					 inst.sg:RemoveStateTag("abouttoattack")
--				 end
--			 end),
--		 },

--		 events =
--		 {
--			 EventHandler("equip", function(inst) inst.sg:GoToState("idle") end),
--			 EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end),
--			 EventHandler("animqueueover", function(inst)
--				 if inst.AnimState:AnimDone() then
--					 inst.sg:GoToState("idle")
--				 end
--			 end),
--		 },

--		 onexit = function(inst)
--			 if inst.sg:HasStateTag("abouttoattack") then
--				 inst.replica.combat:CancelAttack()
--			 end
--		 end,
--	 }
-- )

-- AddStategraphEvent("wilson",
-- 	EventHandler("redirect_locomote", function(inst, data)
--		 inst.sg:GoToState("dodge", data)
--	 end)
-- )

-- AddStategraphState("wilson", 
-- 	State
--	 {
--		 name = "dodge",
--		 tags = {"busy", "evade", "no_stun", "canrotate", "nopredict"},

--		 onenter = function(inst, data)
-- 			inst.components.locomotor:Stop()
--			 if data and data.pos then
-- 				local pos = data.pos:GetPosition()
-- 				inst:ForceFacePoint(pos.x, 0, pos.z)
-- 			end

--			 inst.sg:SetTimeout(0.25)
--			 inst.AnimState:PlayAnimation("slide_pre")

--			 inst.AnimState:PushAnimation("slide_loop")
--			 inst.SoundEmitter:PlaySound("hamletcharactersound/characters/wheeler/slide")
--			 inst.Physics:SetMotorVelOverride(20,0,0)
--			 inst.components.locomotor:EnableGroundSpeedMultiplier(false)
			
--			 inst.was_invincible = inst.components.health.invincible
--			 inst.components.health:SetInvincible(true)
--			 inst.sg:AddStateTag("noattack")
			
--			 inst.last_dodge_time = GLOBAL.GetTime()
-- 			inst.dodgetime:set(inst.dodgetime:value() == false and true or false)
			
-- 			if inst.components.playercontroller ~= nil then
--				 inst.components.playercontroller:RemotePausePrediction()
--			 end
-- 			inst.sg:SetTimeout(0.25)
--		 end,

--		 ontimeout = function(inst)
--			 inst.sg:GoToState("dodge_pst")
--		 end,

--		 onexit = function(inst)
--			 inst.components.locomotor:EnableGroundSpeedMultiplier(true)
--			 inst.Physics:ClearMotorVelOverride()
--			 inst.components.locomotor:Stop()
			
--			 inst.components.locomotor:SetBufferedAction(nil)
--			 if not inst.was_invincible then
--				 inst.components.health:SetInvincible(false)
--			 end
--			 inst.sg:RemoveStateTag("noattack")

--			 inst.was_invincible = nil
--		 end,
--	 }
-- )

-- AddStategraphState("wilson",
-- 	State
--	 {
--		 name = "dodge_pst",
--		 tags = {"evade","no_stun"},

--		 onenter = function(inst)
--			 inst.AnimState:PlayAnimation("slide_pst")
--		 end,

--		 events =
--		 {
--			 EventHandler("animover", function(inst)
--				 inst.sg:GoToState("idle")
--			 end ),
--		 }
--	 }
-- )

-- AddStategraphState("wilson_client", 
-- 	State
--	 {
--		 name = "dodge",
--		 tags = {"busy", "evade","no_stun","canrotate"},

--		 onenter = function(inst, data)
-- 			inst.entity:SetIsPredictingMovement(false)
--			 if data and data.pos then
-- 				local pos = data.pos:GetPosition()
-- 				inst:ForceFacePoint(pos.x, 0, pos.z)
-- 			end

--			 inst.components.locomotor:Stop()
--			 inst.AnimState:PlayAnimation("slide_pre")
--			 inst.AnimState:PushAnimation("slide_loop", false)

--			 inst.components.locomotor:EnableGroundSpeedMultiplier(false)
			
--			 inst.last_dodge_time = GLOBAL.GetTime()
-- 			inst.dodgetime:set(inst.dodgetime:value() == false and true or false)
-- 			inst:PerformPreviewBufferedAction()
-- 			inst.sg:SetTimeout(2)
--		 end,
		
-- 		onupdate = function(inst)
--			 if inst:HasTag("working") then
--				 if inst.entity:FlattenMovementPrediction() then
--					 inst.sg:GoToState("idle", "noanim")
--				 end
--			 elseif inst.bufferedaction == nil then
--				 inst.sg:GoToState("idle")
--			 end
--		 end,

--		 ontimeout = function(inst)
--			 inst:ClearBufferedAction()
--			 inst.sg:GoToState("idle")
--		 end,

--		 onexit = function(inst)
--			 inst.entity:SetIsPredictingMovement(true)
--		 end,
--	 }
-- )

AddStategraphState("wilson", 
	State {
		name = "spygoggle",
		tags = {"preinvestigate", "investigating", "working"},
		
		onenter = function(inst)
			inst.sg.statemem.action = inst:GetBufferedAction()
			inst.AnimState:PlayAnimation("goggle")
		end,
		
		timeline=
		{
			TimeEvent(9*FRAMES, function(inst)
				inst.sg:RemoveStateTag("preinvestigate")
			end),

			TimeEvent(13*FRAMES, function(inst)
				inst.SoundEmitter:PlaySound("wagstaff_items/items/goggles/use_goggles", "goggle")			   
			end),			

			TimeEvent(16*FRAMES, function(inst) 
				inst.sg:RemoveStateTag("investigating")
			end),

			TimeEvent(45*FRAMES, function(inst)
				inst:PerformBufferedAction()			   
			end),
		},
		
		events=
		{
			EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end ),
			EventHandler("animover", function(inst)
				inst.sg:GoToState("spygoggle_post")
			end ),
		},
		
		onexit= function(inst)
			inst.SoundEmitter:KillSound("goggle")				
		end,		
	}
)

AddStategraphState("wilson", 
	State{ 
		name = "spygoggle_post",
		tags = {"investigating", "working"},
		onenter = function(inst)
			inst.AnimState:PlayAnimation("goggle_pst")
		end,
		
		events=
		{
			EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end ),
			EventHandler("animover", function(inst) inst.sg:GoToState("idle") end),
		},
	}
)

AddStategraphState("wilson_client", 
	State {
		name = "spygoggle",
		tags = {"preinvestigate", "investigating", "working"},
		
		onenter = function(inst)
			inst.sg.statemem.action = inst:GetBufferedAction()
			inst.AnimState:PlayAnimation("goggle")
		end,
		
		timeline=
		{
			TimeEvent(9*FRAMES, function(inst)
				inst.sg:RemoveStateTag("preinvestigate")
			end),

			TimeEvent(13*FRAMES, function(inst)
				inst.SoundEmitter:PlaySound("wagstaff_items/items/goggles/use_goggles", "goggle")			   
			end),			

			TimeEvent(16*FRAMES, function(inst) 
				inst.sg:RemoveStateTag("investigating")
			end),

			TimeEvent(45*FRAMES, function(inst)
				inst:PerformPreviewBufferedAction()			   
			end),
		},
		
		events=
		{
			EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end ),
			EventHandler("animover", function(inst)
				inst.sg:GoToState("spygoggle_post")
			end ),
		},
		
		onexit= function(inst)
			inst.SoundEmitter:KillSound("goggle")				
		end,		
	}
)

AddStategraphState("wilson_client", 
	State{ 
		name = "spygoggle_post",
		tags = {"investigating", "working"},
		onenter = function(inst)
			inst.AnimState:PlayAnimation("goggle_pst")
		end,
		
		events=
		{
			EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end ),
			EventHandler("animover", function(inst) inst.sg:GoToState("idle") end),
		},
	}
)

AddStategraphState("wilson", 
	State{
		name = "goggleattack",
		tags = {"attack", "notalking", "abouttoattack"},
		
		onenter = function(inst)
			local buffaction = inst:GetBufferedAction()
			local target = buffaction ~= nil and buffaction.target or nil
			local equip = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
			if inst.components.rider:IsRiding() then
				inst.Transform:SetFourFaced()
			end
			inst.components.combat:SetTarget(target)
			inst.components.combat:StartAttack()
			inst.components.locomotor:Stop()
			inst.AnimState:PlayAnimation("goggle_fast")
			if inst.sg.prevstate == inst.sg.currentstate then
				inst.sg.statemem.chained = true
				inst.AnimState:SetTime(5 * FRAMES)
			end
			inst.AnimState:PushAnimation("goggle_fast_pst", false)

			inst.sg:SetTimeout(math.max((inst.sg.statemem.chained and 14 or 18) * FRAMES, inst.components.combat.min_attack_period + .5 * FRAMES))

			if target ~= nil and target:IsValid() then
				inst:FacePoint(target.Transform:GetWorldPosition())
				inst.sg.statemem.attacktarget = target
			end

			if (equip ~= nil and equip.projectiledelay or 0) > 0 then
				inst.sg.statemem.projectiledelay = (inst.sg.statemem.chained and 9 or 14) * FRAMES - equip.projectiledelay
				if inst.sg.statemem.projectiledelay <= 0 then
					inst.sg.statemem.projectiledelay = nil
				end
			end
		end,

		onupdate = function(inst, dt)
			if (inst.sg.statemem.projectiledelay or 0) > 0 then
				inst.sg.statemem.projectiledelay = inst.sg.statemem.projectiledelay - dt
				if inst.sg.statemem.projectiledelay <= 0 then
					inst:PerformBufferedAction()
					inst.sg:RemoveStateTag("abouttoattack")
				end
			end
		end,

		timeline =
		{
			TimeEvent(8 * FRAMES, function(inst)
				if inst.sg.statemem.chained then
				end
			end),
			TimeEvent(9 * FRAMES, function(inst)
				if inst.sg.statemem.chained and inst.sg.statemem.projectiledelay == nil then
					inst:PerformBufferedAction()
					inst.sg:RemoveStateTag("abouttoattack")
				end
			end),
			TimeEvent(13 * FRAMES, function(inst)
				if not inst.sg.statemem.chained then
				end
			end),
			TimeEvent(14 * FRAMES, function(inst)
				if not inst.sg.statemem.chained and inst.sg.statemem.projectiledelay == nil then
					inst:PerformBufferedAction()
					inst.sg:RemoveStateTag("abouttoattack")
					if inst.components.moisture:GetMoisture() > 0 then
						inst.components.combat:GetAttacked(nil, TUNING.HEALING_MEDSMALL, nil, "electric")
						inst:DoTaskInTime(8 * FRAMES, function() inst.components.combat:GetAttacked(nil, TUNING.HEALING_MEDSMALL, nil, "electric") end)
					end
				end
			end),
		},

		ontimeout = function(inst)
			inst.sg:RemoveStateTag("attack")
			inst.sg:AddStateTag("idle")
		end,

		events =
		{
			EventHandler("equip", function(inst) inst.sg:GoToState("idle") end),
			EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end),
			EventHandler("animqueueover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
			end),
		},

		onexit = function(inst)
			inst.components.combat:SetTarget(nil)
			if inst.sg:HasStateTag("abouttoattack") then
				inst.components.combat:CancelAttack()
			end
			if inst.components.rider:IsRiding() then
				inst.Transform:SetSixFaced()
			end
		end,
	}
)

AddStategraphState("wilson", 
	State{ 
		name = "goggle_attack_post",
		tags = {"investigating", "working"},
		onenter = function(inst)
			inst.AnimState:PlayAnimation("goggle_fast_pst")
		end,
		
		events=
		{
			EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end ),
			EventHandler("animover", function(inst) inst.sg:GoToState("idle") end),
		},
	}
)

AddStategraphState("wilson",
	State{
		name = "telebrella",
		tags = { "busy", "pausepredict", "transform", "nomorph" },

		onenter = function(inst)
			inst.telbrellalight = GLOBAL.SpawnPrefab("telebrella_glow")
			if inst.telbrellalight then
				local x,y,z = inst.Transform:GetWorldPosition()
				inst.telbrellalight.Transform:SetPosition(x,y,z)
			end		 
			inst.components.playercontroller:Enable(false)
			inst.AnimState:PlayAnimation("teleport_out") 

			-- inst.AnimState:SetBloomEffectHandle( "shaders/anim.ksh" )
			inst.components.bloomer:PushBloom("telebrella", "shaders/anim.ksh")

			inst.components.locomotor:Stop()
		end,

		onexit = function(inst)
			inst.components.playercontroller:Enable(true)
		end,

		timeline = 
		{
			TimeEvent(13*FRAMES, function(inst)	 
				inst.SoundEmitter:PlaySound("dontstarve/rain/thunder_close")
				inst:ShakeCamera(GLOBAL.CAMERASHAKE.FULL, 0.7, 0.02, .5, 40)
			end),
		},

		events = {
			EventHandler("animover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("telebrella_finish") 
				end
			end ),
		},
	}
)

AddStategraphState("wilson_client",
	State{
		name = "goggleattack",
		tags = { "attack", "notalking", "abouttoattack" },

		onenter = function(inst)
			local equip = inst.replica.inventory:GetEquippedItem(EQUIPSLOTS.HEAD) or inst.replica.inventory:GetEquippedItem(EQUIPSLOTS.HANDS) or inst.replica.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
			inst.components.locomotor:Stop()

			inst.AnimState:PlayAnimation("goggle_fast")
			if inst.sg.prevstate == inst.sg.currentstate then
				inst.sg.statemem.chained = true
				inst.AnimState:SetTime(5 * FRAMES)
			end
			
			inst.AnimState:PushAnimation("goggle_fast_pst", false)

			if inst.replica.combat ~= nil then
				inst.replica.combat:StartAttack()
				inst.sg:SetTimeout(math.max((inst.sg.statemem.chained and 14 or 18) * FRAMES, inst.replica.combat:MinAttackPeriod() + .5 * FRAMES))
			end

			local buffaction = inst:GetBufferedAction()
			if buffaction ~= nil then
				inst:PerformPreviewBufferedAction()
				if buffaction.target ~= nil and buffaction.target:IsValid() then
					inst:FacePoint(buffaction.target:GetPosition())
					inst.sg.statemem.attacktarget = buffaction.target
				end
			end

			if (equip.projectiledelay or 0) > 0 then
				inst.sg.statemem.projectiledelay = (inst.sg.statemem.chained and 9 or 14) * FRAMES - equip.projectiledelay
				if inst.sg.statemem.projectiledelay <= 0 then
					inst.sg.statemem.projectiledelay = nil
				end
			end
		end,

		onupdate = function(inst, dt)
			if (inst.sg.statemem.projectiledelay or 0) > 0 then
				inst.sg.statemem.projectiledelay = inst.sg.statemem.projectiledelay - dt
				if inst.sg.statemem.projectiledelay <= 0 then
					inst:ClearBufferedAction()
					inst.sg:RemoveStateTag("abouttoattack")
				end
			end
		end,

		timeline =
		{
			TimeEvent(9 * FRAMES, function(inst)
				if inst.sg.statemem.chained and inst.sg.statemem.projectiledelay == nil then
					inst:ClearBufferedAction()
					inst.sg:RemoveStateTag("abouttoattack")
				end
			end),
			TimeEvent(14 * FRAMES, function(inst)
				if not inst.sg.statemem.chained and inst.sg.statemem.projectiledelay == nil then
					inst:ClearBufferedAction()
					inst.sg:RemoveStateTag("abouttoattack")
				end
			end),
		},

		ontimeout = function(inst)
			inst.sg:RemoveStateTag("attack")
			inst.sg:AddStateTag("idle")
		end,

		events =
		{
			EventHandler("animqueueover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
			end),
		},

		onexit = function(inst)
			if inst.sg:HasStateTag("abouttoattack") and inst.replica.combat ~= nil then
				inst.replica.combat:CancelAttack()
			end
		end,
	}
)
AddStategraphState("wilson_client", 
	State{   
		name = "goggle_attack_post",
		tags = {"investigating", "working"},
		onenter = function(inst)
			inst.AnimState:PlayAnimation("goggle_fast_pst")
		end,
		
		events=
		{
			EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end ),
			EventHandler("animover", function(inst) inst.sg:GoToState("idle") end),
		},
	}
)

AddStategraphState("wilson",
	State{
		name = "telebrella_finish",
		tags = { "busy", "pausepredict", "transform", "nomorph" },

		onenter = function(inst)
			if not inst.telbrellalight then
				inst.telbrellalight = SpawnPrefab("telebrella_glow")
				if inst.telbrellalight then
					local x,y,z = inst.Transform:GetWorldPosition()
					inst.telbrellalight.Transform:SetPosition(x,y,z)
				end
			end		   

			inst.DynamicShadow:Enable(false)
			inst.components.playercontroller:Enable(false)
			inst.AnimState:PlayAnimation("teleport_finish") 

			inst.components.locomotor:Stop()
		end,

		onexit = function(inst)
			inst.DynamicShadow:Enable(true)
			inst.components.playercontroller:Enable(true)
		end,

		timeline = 
		{
		},

		events = {
			EventHandler("animover", function(inst)
				inst:SnapCamera()
				if inst:GetBufferedAction() ~= nil then
					inst:PerformBufferedAction()
				else
					local equipped = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
					if equipped and equipped:HasTag("telebrella") then
						equipped.components.spellcaster:CastSpell(equipped)
					end
				end
				inst.sg:GoToState("telebrella_pst") 
			end ),
		},
	}
)

AddStategraphState("wilson",
	State{
		name = "telebrella_pst",
		tags = { "busy", "pausepredict", "transform", "nomorph" },
		
		onenter = function(inst)
			inst:SnapCamera()
			inst:PerformBufferedAction()
			inst.AnimState:PlayAnimation("teleport_in") 
		end,
		
		timeline=
		{
			TimeEvent(10*FRAMES, function(inst) inst.SoundEmitter:PlaySound("wagstaff_items/items/=telebrella/telebrella_end") end),
		},

		events=
		{
			EventHandler("animover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
			end),
		},		
		
		onexit = function(inst)
			inst.components.playercontroller:Enable(true)
			inst.components.bloomer:PopBloom("telebrella")
		end,
	}
)

-- AddStategraphState("wilson",
-- 	State{
--		 name = "blunderbuss",
--		 tags = {"attack", "notalking", "abouttoattack"},
		
--		 onenter = function(inst)
-- 			local buffaction = inst:GetBufferedAction()
--			 local target = buffaction ~= nil and buffaction.target or nil

--			 if inst.components.rider:IsRiding() then
--				 inst.Transform:SetFourFaced()
--			 end

--			 inst.components.combat:SetTarget(target)
-- 			inst.components.combat:StartAttack()

--			 inst.sg.statemem.target = target
-- 			inst.sg.statemem.target_position = target and Vector3(inst.sg.statemem.target.Transform:GetWorldPosition())

--			 inst.components.locomotor:Stop()
--			 inst.AnimState:PlayAnimation("speargun")
			
--			 if target then
--				 if inst.components.combat.target and inst.components.combat.target:IsValid() then
--					 inst:FacePoint(inst.components.combat.target.Transform:GetWorldPosition())
--				 end
-- 			end
--		 end,
		
--		 timeline=
--		 {
		   
--			 TimeEvent(12*FRAMES, function(inst)
--				 inst.sg:RemoveStateTag("abouttoattack")
--				 inst.components.combat:DoAttack(inst.sg.statemem.target)

--				 inst.SoundEmitter:PlaySound("hamletcharactersound/characters/warbucks/blunderbuss/shoot")
--				 local cloud = SpawnPrefab("cloudpuff")
--				 local pt = Vector3(inst.Transform:GetWorldPosition())

-- 				local angle
-- 				if inst.components.combat.target and inst.components.combat.target:IsValid() then 
--					 angle = (inst:GetAngleToPoint(inst.components.combat.target.Transform:GetWorldPosition()) -90)* GLOBAL.DEGREES --Crash
-- 				else
-- 					angle = (inst:GetAngleToPoint(inst.sg.statemem.target_position.x, inst.sg.statemem.target_position.y, inst.sg.statemem.target_position.z) -90)* GLOBAL.DEGREES
-- 				end
				
-- 				inst.sg.statemem.target_position = nil
					
--				 local DIST = 1.5
--				 local offset = Vector3(DIST * math.cos( angle+(GLOBAL.PI/2) ), 0, -DIST * math.sin( angle+(GLOBAL.PI/2) ))

--				 cloud.Transform:SetPosition(pt.x+offset.x,2,pt.z+offset.z)
				
-- 				inst:PerformBufferedAction()
--			 end),
--			 TimeEvent(20*FRAMES, function(inst) inst.sg:RemoveStateTag("attack") end),
--		 },
		
--		 events=
--		 {
--			 EventHandler("animover", function(inst)
--				 inst.sg:GoToState("idle")
--			 end),
--		 },

--		 onexit = function(inst)
--			 if inst.components.rider:IsRiding() then
--				 inst.Transform:SetSixFaced()
--			 end
--		 end,
--	 }
-- )

-- AddStategraphState("wilson_client",
-- 	State{
--		 name = "blunderbuss",
--		 tags = {"attack", "notalking", "abouttoattack"},
		
--		 onenter = function(inst)
-- 			local buffaction = inst:GetBufferedAction()
--			 local target = buffaction ~= nil and buffaction.target or nil

--			 inst.replica.combat:SetTarget(target)
-- 			inst.replica.combat:StartAttack()

--			 inst.sg.statemem.target = target
-- 			inst.sg.statemem.target_position = target and Vector3(inst.sg.statemem.target.Transform:GetWorldPosition())

--			 inst.components.locomotor:Stop()
--			 inst.AnimState:PlayAnimation("speargun")
			
--			 if target then
--				 if target:IsValid() and TheWorld ~= nil and TheWorld.ismastersim then
--					 inst:FacePoint(Point(target.Transform:GetWorldPosition()))
--				 end
-- 			end
			
-- 			if buffaction ~= nil then
-- 				inst:PerformPreviewBufferedAction()
-- 			end
--		 end,
		
--		 timeline=
--		 {
		   
--			 TimeEvent(12*FRAMES, function(inst)
--				 inst.sg:RemoveStateTag("abouttoattack")
--			 end),
--			 TimeEvent(20*FRAMES, function(inst) inst.sg:RemoveStateTag("attack") end),
--		 },
		
--		 events=
--		 {
--			 EventHandler("animover", function(inst)
--				 inst.sg:GoToState("idle")
--			 end),
--		 },
--	 }
-- )

AddStategraphPostInit("wilson", function(inst) --thanks mobbstar
	local _attack_actionhandler = inst.actionhandlers[ACTIONS.ATTACK].deststate
	inst.actionhandlers[ACTIONS.ATTACK].deststate = function(inst, action, ...)
		if not (inst.sg:HasStateTag("attack") and action.target == inst.sg.statemem.attacktarget or inst.components.health:IsDead()) then
			local weapon = inst.components.combat ~= nil and inst.components.combat:GetWeapon() or nil

			if weapon and weapon:HasTag("fryfocals") then
				return "goggleattack"
			-- elseif weapon and weapon:HasTag("hand_gun") then
			-- 	return "shoot"
			-- elseif weapon and weapon:HasTag("blunderbuss") then
			-- 	return "blunderbuss"
			end
		end
		return _attack_actionhandler(inst, action, ...)
	end
end)

AddStategraphPostInit("wilson_client", function(inst)
	local _attack_actionhandler = inst.actionhandlers[ACTIONS.ATTACK].deststate
	inst.actionhandlers[ACTIONS.ATTACK].deststate = function(inst, action, ...)
		if not (inst.sg:HasStateTag("attack") and action.target == inst.sg.statemem.attacktarget or inst.replica.health:IsDead()) then
			local equip = inst.replica.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
			if equip and equip:HasTag("fryfocals") then
				return "goggleattack"
			-- elseif equip and equip:HasTag("hand_gun") then
			-- 	return "shoot"
			-- elseif equip and equip:HasTag("blunderbuss") then
			-- 	return "blunderbuss"
			end
		end
		return _attack_actionhandler(inst, action, ...)
	end
end)

AddStategraphPostInit("wilson", function(inst)
	local _castspell_actionhandler = inst.actionhandlers[ACTIONS.CASTSPELL].deststate
	inst.actionhandlers[ACTIONS.CASTSPELL].deststate = function(inst, action, ...)
		return action.invobject ~= nil
			and ( (action.invobject:HasTag("telebrella") and "telebrella")
				or _castspell_actionhandler(inst, action, ...)
				)
	end
end)

if GLOBAL.TheNet:GetServerGameMode() == "quagmire" then
	AddStategraphPostInit("wilson", function(inst)
		local _blink_actionhandler = inst.actionhandlers[ACTIONS.BLINK].deststate
		inst.actionhandlers[ACTIONS.BLINK].deststate = function(inst, action, ...)
			return action.invobject ~= nil
				and ( (action.invobject:HasTag("telebrella") and "telebrella")
					or _castaoe_actionhandler(inst, action, ...)
					)
		end
	end)

	AddStategraphPostInit("wilson_client", function(inst)
		local _blink_actionhandler = inst.actionhandlers[ACTIONS.BLINK].deststate
		inst.actionhandlers[ACTIONS.BLINK].deststate = function(inst, action, ...)
			return action.invobject ~= nil
				and ( (action.invobject:HasTag("telebrella") and "telebrella")
					or _castspell_actionhandler(inst, action, ...)
					)
		end
	end)
end

-- --------------[[Pig Trading]]------------------
-- AddStategraphActionHandler("pig", 
-- 	ActionHandler(ACTIONS.SPECIAL_ACTION3, nil)
-- )

-- AddStategraphState("pig",
-- 	State{
--		 name = "daily_gift",
--		 tags = {"busy"},

--		 onenter = function(inst, player)
--			 inst.components.talker:Say(STRINGS.PIG_TALK_DAILY_GIFTING[math.random(1, #STRINGS.PIG_TALK_DAILY_GIFTING)])
--			 inst.AnimState:PlayAnimation("pig_take")
--			 inst.Physics:Stop()
-- 			inst.sg.statemem.target = player
--		 end,

--		 timeline=
--		 {
--			 TimeEvent(13*FRAMES, 
--				 function(inst)
--					 local resources = { "flint", "log", "rocks", "cutgrass", "seeds", "twigs" }

-- 					if inst.sg.statemem.target then
-- 						inst.sg.statemem.target.components.inventory:GiveItem(SpawnPrefab(resources [math.random(1, #resources)]), nil, inst:GetPosition())
-- 					end
--				 end),
				
-- 			TimeEvent(25*FRAMES, 
--				 function(inst)
-- 					inst.daily_gifting = false
-- 					inst.sg.statemem.target = nil
--				 end),
--		 },
		
--		 events=
--		 {
--			 EventHandler("animover", 
--				 function(inst) 
--					 inst.sg:GoToState("idle") 
--				 end ),
--		 },
--	 }
-- )