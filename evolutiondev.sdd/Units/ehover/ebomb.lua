-- UNITDEF -- EBOMB --
--------------------------------------------------------------------------------

local unitName = "ebomb"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 1,
  brakeRate          = 1,
  buildCostEnergy    = 0,
  buildCostMetal     = 80,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  canGuard           = true,
  canHover           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "ARMORED NOTAIR",
  description        = [[Hovering Bomb
Armored
500 Damage vs Buildings
250 Damage vs Light/Armored

Requires +12 Power
Uses +12 Supply]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "ebombboom",
  footprintX         = 2,
  footprintZ         = 2,
  iconType           = "hover",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  kamikaze           = true,
  kamikazeDistance   = 100,
  leaveTracks        = false,
  maxDamage          = 160,
  maxSlope           = 26,
  maxVelocity        = 10,
  maxReverseVelocity = 5,
  maxWaterDepth      = 10,
  metalStorage       = 0,
  movementClass      = "HOVERTANK2",
  name               = "Shellshock",
  noChaseCategory    = "VTOL",
  objectName         = "ebomb.s3o",
  onlytargetcategory1 = "NOTAIR",
  onlytargetcategory2 = "NOTAIR",
  onlytargetcategory3 = "NOTAIR",
  onlytargetcategory4 = "NOTAIR",
  onlytargetcategory5 = "NOTAIR",
  onlytargetcategory6 = "NOTAIR",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "ebombboom",
  selfDestructCountdown = 0,
  side               = "CORE",
  sightDistance      = 175,
  smoothAnim         = true,
  stealth            = true,
  turnInPlace        = false,
  turnRate           = 1000,
  unitname           = "ebomb",
  upright            = true,
  workerTime         = 0,
	
sfxtypes = {
	pieceExplosionGenerators = {
		"deathceg0",
		"deathceg1",
	},
},
	
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "ebombboom",
	  onlyTargetCategoy	 = "BUILDING",
      badTargetCategory  = "WALL",
    },
  },
  customParams = {
    needed_cover = 1,
  	death_sounds = "soldier",
    RequireTech = "12 Power",
	armortype   = "armored",
	nofriendlyfire	= "1",
	supply_cost = 12,
	normaltex = "unittextures/ebombnormal.png", 
	helptext = [[]],
  },
}

--------------------------------------------------------------------------------

local weaponDefs = {
  ebombboom = {
   name="hoverbomb",
   weaponType		   = "Cannon",
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=100,
   reloadtime=3.6,
   weaponvelocity=250,
   AreaOfEffect=556,
   soundstart="unitexplodemedium.wav",
   soundhit="unitexplodemedium.wav",
   explosiongenerator="custom:ebombexpl",
   customparams = {
	  damagetype		= "ebomb",
	  nofriendlyfire	= "true", 
    },  

    damage = {
      default            = 500,
    },
  },
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
