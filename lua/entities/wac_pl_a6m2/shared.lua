if not wac then return end
if SERVER then AddCSLuaFile('shared.lua') end
ENT.Base 				= "wac_pl_base"
ENT.Type 				= "anim"
ENT.Category			= wac.aircraft.spawnCategoryC
ENT.PrintName			= "Mitsubishi A6M2 Zero"
ENT.Author				= "SentryGunMan"

ENT.Spawnable			= true
ENT.AdminSpawnable		= true

ENT.Model	    = "models/sentry/a6m2.mdl"
ENT.RotorPhModel	= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel	= "models/sentry/a6m2_prop.mdl"

ENT.rotorPos	= Vector(101,0,74)
ENT.TopRotorDir	= 1

ENT.EngineForce	= 465
ENT.Weight	    = 2410
ENT.SeatSwitcherPos	= Vector(0,0,0)
ENT.AngBrakeMul	= 0.015
ENT.SmokePos	= Vector(101,0,74)
ENT.FirePos	    = Vector(101,0,74)

if CLIENT then
	ENT.thirdPerson = {
		distance = 550
	}
end

ENT.Agility = {
	Thrust = 10
}

ENT.Wheels={
	{
		mdl="models/sentry/a6m2_bw.mdl",
		pos=Vector(-205.5,0,59.75),
		friction=10,
		mass=600,
	},
	{
		mdl="models/sentry/a6m2_fw.mdl",
		pos=Vector(42,68,12),
		friction=10,
		mass=550,
	},
	{
		mdl="models/sentry/a6m2_fw.mdl",
		pos=Vector(42,-68,12),
		friction=10,
		mass=550,
	},
}

ENT.Seats = {
	{
		pos=Vector(2.5,0,70.23),
		exit=Vector(10,59,85),
		weapons={"Type 97 and Type 99-1"}
	},
}

ENT.Weapons = {
	["Type 97 and Type 99-1"] = {
		class = "wac_pod_gatling",
		info = {
			Pods = {
				Vector(70,8.9,96),
				Vector(70,-8.9,96),
				Vector(67,-86.5,69),
				Vector(67,86.5,69)
			},
			FireRate = 500,
			Sequential = true,
			Sounds = {
				shoot = "WAC/a6m2/gun2.wav",
				stop = "WAC/a6m2/gun2_stop.wav"
			}
		}
	},
}

ENT.Sounds={
	Start="WAC/A6M2/Start.wav",
	Blades="WAC/A6M2/external.wav",
	Engine="WAC/A6M2/internal.wav",
	MissileAlert="",
	MissileShoot="",
	MinorAlarm="",
	LowHealth="",
	CrashAlarm=""
}


function ENT:DrawPilotHud() end
function ENT:DrawWeaponSelection() end
