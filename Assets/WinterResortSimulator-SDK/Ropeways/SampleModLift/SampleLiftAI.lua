--
--
-- Winter Resort Simulator - Modding SDK
-- Sample AI class
--
--
-- Copyright (C) HR Innoways GmbH. All Rights Reserved.
--
-- Please view the license file in the root directory. All scripts
-- contained in the Winter Resort Simulator Modding SDK may only be
-- used as specified in that license file.
--
--

SampleLiftAI						= SampleLiftAI or {};
local SampleLiftAIClass				= Class(SampleLiftAI, RopewayAI);

-- implement command stacks
SampleLiftAI.commandStackFeed		= {
	function(self, dt)
		local nextAction			= self.time;
		if self.control.isControlOn then
			-- restart control if it was on previously
			ControlElement.pressOnce(self.buttonsPS.ControlOnOff);
			coroutine.yield();
		end;
		
		nextAction					= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsPS.ControlOnOff);
	end,
	function(self, dt)
		local nextAction			= self.time;
		-- set other station to manned
		nextAction					= self.time + 5 + self.waitTime;	while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsOS.Staffed);
	end,
	function(self, dt)
		local nextAction			= self.time;
		-- alright, now switch to passenger operation
		nextAction					= self.time + 5 + self.waitTime;	while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsPS.PassengerMode);
		
		-- confirm
		nextAction					= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsOS.PassengerMode);
	end,
	function(self, dt)
		local nextAction			= self.time;
		-- mark the first carrier downhill (and uphill as well)
		nextAction					= self.time + 10 + self.waitTime;	while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsPS.CIS);
		nextAction					= self.time + 10 + self.waitTime;	while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsOS.CIS);
	end,
	function(self, dt)
		local nextAction			= self.time;
		
		-- alright, both stations are ready. Start going!
		nextAction					= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsPS.QuitOperation);
		nextAction					= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsOS.QuitOperation);
		nextAction					= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsPS.Run);
		nextAction					= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsOS.Run);
	end,
	function(self, dt)
		local nextAction			= self.time;
		nextAction					= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlSwitch.setPosition(self.buttonsPS.Slow, 2, false);
		
		nextAction					= self.time + 40 + self.waitTime;	while self.time < nextAction do coroutine.yield(); end;
		ControlSwitch.setPosition(self.buttonsPS.Slow, 0, false);
	end,
	function(self, dt)
		self.currentState			= "feed";
	end,
	-- apply a random driving speed
	function(self, dt)
		local nextAction				= self.time + self.waitTime;	while self.time < nextAction do coroutine.yield(); end;
	
		if self.buttonsPS.DrivingSpeed ~= nil then
			ControlSwitch.setPosition(self.buttonsPS.DrivingSpeed, ControlSwitch.getPositionCount(self.buttonsPS.DrivingSpeed) - 1 - math.random(1, 5));
		end;
	end;
	RopewayAI.placeEntranceNets,
	RopewayAI.openAccessGates,
};
SampleLiftAI.commandStackGarage		= {
	function(self, dt)
		local nextAction			= self.time;
		if not self.control.isControlOn then
			-- start control if it was on previously
			ControlElement.pressOnce(self.buttonsPS.ControlOnOff);
			coroutine.yield();
		end;
	end,
	RopewayAI.startIfNecessary,
	RopewayAI.emptyRopeway,
	RopewayAI.prepareGarage,
	function(self, dt)
		-- stop the lift
		ControlElement.pressOnce(self.buttonsPS.SD1);
	end,
	function(self, dt)
		local nextAction			= self.time;
		-- alright, now switch to service mode
		nextAction					= self.time + 15 + self.waitTime;	while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsPS.ServiceMode);
		
		-- confirm
		nextAction					= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsOS.ServiceMode);
	end,
	function (self, dt)
		-- unstaff valley station
		local nextAction			= self.time;
		nextAction					= self.time + 5 + self.waitTime;	while self.time < nextAction do coroutine.yield(); end;
		-- unstaff that one
		if not self.control:getIsStationStaffed(self.stationOSNo) then
			return;
		end;

		-- set other station to unstaffed
		ControlElement.pressOnce(self.buttonsOS.Staffed);
		nextAction				= self.time + self.waitTime;		while self.time < nextAction do coroutine.yield(); end;
		ControlElement.pressOnce(self.buttonsPS.Staffed);
	end,
	function(self, dt)
		local nextAction			= self.time;
		
		-- okay cool, almost done! just shut down
		if self.control.isControlOn then
			-- start control if it was on previously
			ControlElement.pressOnce(self.buttonsPS.ControlOnOff);
			coroutine.yield();
		end;
	end,
	function (self, dt)
		self.currentState			= "garage";
	end
};

-- no tutorials available (in theory possible, but very much work for modders)
SampleLiftAI.tutorials				= {};

function SampleLiftAI:load(control)
	-- load function for the AI module
	self:parentClass().load(self, control, 1); -- station 2 is parking station

	-- start 15 min before the lift's "openFrom"
	self.feedDuration					= 15*60;

	-- implement command stacks
	self.commandStacks.feed				= SampleLiftAI.commandStackFeed;
	self.commandStacks.garage			= SampleLiftAI.commandStackGarage;

	-- play an announcement that the resort closes in 15 min
	self.commandStacks.closeIn15Min		= RopewayAI.commandStackCloseIn15Min;

	self.tutorials						= SampleLiftAI.tutorials;
end;