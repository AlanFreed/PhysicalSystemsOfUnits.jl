module testPhysicalSystemsOfUnits

using
    PhysicalSystemsOfUnits

# types
const CGS               = PhysicalSystemsOfUnits.CGS
const SI                = PhysicalSystemsOfUnits.SI
# methods
const isCGS             = PhysicalSystemsOfUnits.isCGS
const isSI              = PhysicalSystemsOfUnits.isSI
const toString          = PhysicalSystemsOfUnits.toString
# CGS physical constants: specific
const BARYE             = PhysicalSystemsOfUnits.BARYE
const CENTIGRADE        = PhysicalSystemsOfUnits.CENTIGRADE
const CENTIMETER        = PhysicalSystemsOfUnits.CENTIMETER
const DYNE              = PhysicalSystemsOfUnits.DYNE
const ERG               = PhysicalSystemsOfUnits.ERG
const GRAM              = PhysicalSystemsOfUnits.GRAM
# CGS physical constants: general
const CGS_ACCELERATION  = PhysicalSystemsOfUnits.CGS_ACCELERATION
const CGS_AREA          = PhysicalSystemsOfUnits.CGS_AREA
const CGS_COMPLIANCE    = PhysicalSystemsOfUnits.CGS_COMPLIANCE
const CGS_DAMPING       = PhysicalSystemsOfUnits.CGS_DAMPING
const CGS_DIMENSIONLESS = PhysicalSystemsOfUnits.CGS_DIMENSIONLESS
const CGS_DISPLACEMENT  = PhysicalSystemsOfUnits.CGS_DISPLACEMENT
const CGS_ENERGY        = PhysicalSystemsOfUnits.CGS_ENERGY
const CGS_ENTROPY       = PhysicalSystemsOfUnits.CGS_ENTROPY
const CGS_FORCE         = PhysicalSystemsOfUnits.CGS_FORCE
const CGS_LENGTH        = PhysicalSystemsOfUnits.CGS_LENGTH
const CGS_MASS          = PhysicalSystemsOfUnits.CGS_MASS
const CGS_MASSDENSITY   = PhysicalSystemsOfUnits.CGS_MASSDENSITY
const CGS_MODULUS       = PhysicalSystemsOfUnits.CGS_MODULUS
const CGS_POWER         = PhysicalSystemsOfUnits.CGS_POWER
const CGS_SECOND        = PhysicalSystemsOfUnits.CGS_SECOND
const CGS_STIFFNESS     = PhysicalSystemsOfUnits.CGS_STIFFNESS
const CGS_STRAIN        = PhysicalSystemsOfUnits.CGS_STRAIN
const CGS_STRAINRATE    = PhysicalSystemsOfUnits.CGS_STRAINRATE
const CGS_STRESS        = PhysicalSystemsOfUnits.CGS_STRESS
const CGS_STRESSRATE    = PhysicalSystemsOfUnits.CGS_STRESSRATE
const CGS_STRETCH       = PhysicalSystemsOfUnits.CGS_STRETCH
const CGS_STRETCHRATE   = PhysicalSystemsOfUnits.CGS_STRETCHRATE
const CGS_TEMPERATRUE   = PhysicalSystemsOfUnits.CGS_TEMPERATURE
const CGS_TIME          = PhysicalSystemsOfUnits.CGS_TIME
const CGS_VELOCITY      = PhysicalSystemsOfUnits.CGS_VELOCITY
const CGS_VOLUME        = PhysicalSystemsOfUnits.CGS_VOLUME
# SI physical constants: specific
const JOULE             = PhysicalSystemsOfUnits.JOULE
const KELVIN            = PhysicalSystemsOfUnits.KELVIN
const KILOGRAM          = PhysicalSystemsOfUnits.KILOGRAM
const NEWTON            = PhysicalSystemsOfUnits.NEWTON
const METER             = PhysicalSystemsOfUnits.METER
const PASCAL            = PhysicalSystemsOfUnits.PASCAL
# SI physical constants: general
const SI_ACCELERATION   = PhysicalSystemsOfUnits.SI_ACCELERATION
const SI_AREA           = PhysicalSystemsOfUnits.SI_AREA
const SI_COMPLIANCE     = PhysicalSystemsOfUnits.SI_COMPLIANCE
const SI_DAMPING        = PhysicalSystemsOfUnits.SI_DAMPING
const SI_DIMENSIONLESS  = PhysicalSystemsOfUnits.SI_DIMENSIONLESS
const SI_DISPLACEMENT   = PhysicalSystemsOfUnits.SI_DISPLACEMENT
const SI_ENERGY         = PhysicalSystemsOfUnits.SI_ENERGY
const SI_ENTROPY        = PhysicalSystemsOfUnits.SI_ENTROPY
const SI_FORCE          = PhysicalSystemsOfUnits.SI_FORCE
const SI_LENGTH         = PhysicalSystemsOfUnits.SI_LENGTH
const SI_MASS           = PhysicalSystemsOfUnits.SI_MASS
const SI_MASSDENSITY    = PhysicalSystemsOfUnits.SI_MASSDENSITY
const SI_MODULUS        = PhysicalSystemsOfUnits.SI_MODULUS
const SI_POWER          = PhysicalSystemsOfUnits.SI_POWER
const SI_SECOND         = PhysicalSystemsOfUnits.SI_SECOND
const SI_STIFFNESS      = PhysicalSystemsOfUnits.SI_STIFFNESS
const SI_STRAIN         = PhysicalSystemsOfUnits.SI_STRAIN
const SI_STRAINRATE     = PhysicalSystemsOfUnits.SI_STRAINRATE
const SI_STRESS         = PhysicalSystemsOfUnits.SI_STRESS
const SI_STRESSRATE     = PhysicalSystemsOfUnits.SI_STRESSRATE
const SI_STRETCH        = PhysicalSystemsOfUnits.SI_STRETCH
const SI_STRETCHRATE    = PhysicalSystemsOfUnits.SI_STRETCHRATE
const SI_TEMPERATURE    = PhysicalSystemsOfUnits.SI_TEMPERATURE
const SI_TIME           = PhysicalSystemsOfUnits.SI_TIME
const SI_VELOCITY       = PhysicalSystemsOfUnits.SI_VELOCITY
const SI_VOLUME         = PhysicalSystemsOfUnits.SI_VOLUME

export run

function run()
    println("CGS units:")
    println("   barye:         ", toString(BARYE))
    println("   centigrade:    ", toString(CENTIGRADE))
    println("   centimeter:    ", toString(CENTIMETER))
    println("   dyne:          ", toString(DYNE))
    println("   erg:           ", toString(ERG))
    println("   gram:          ", toString(GRAM), "\n")
    println("   dimensionless: ", toString(CGS_DIMENSIONLESS))
    println("   mass:          ", toString(CGS_MASS))
    println("   damping:       ", toString(CGS_DAMPING))
    println("   stiffness:     ", toString(CGS_STIFFNESS))
    println("   length:        ", toString(CGS_LENGTH))
    println("   area:          ", toString(CGS_AREA))
    println("   volume:        ", toString(CGS_VOLUME))
    println("   time:          ", toString(CGS_SECOND))
    println("   mass density:  ", toString(CGS_MASSDENSITY))
    println("   displacement:  ", toString(CGS_DISPLACEMENT))
    println("   velocity:      ", toString(CGS_VELOCITY))
    println("   acceleration:  ", toString(CGS_ACCELERATION))
    println("   force:         ", toString(CGS_FORCE))
    println("   energy:        ", toString(CGS_ENERGY))
    println("   entropy:       ", toString(CGS_ENTROPY))
    println("   power:         ", toString(CGS_POWER))
    println("   stress:        ", toString(CGS_STRESS))
    println("   modulus:       ", toString(CGS_MODULUS))
    println("   compliance:    ", toString(CGS_COMPLIANCE))
    println("   strain:        ", toString(CGS_STRAIN))
    println("   strain rate:   ", toString(CGS_STRAINRATE), "\n")
    force = CGS_MASS + CGS_ACCELERATION
    println("   mass + acceleration  = ", toString(force))
    mass = force - CGS_ACCELERATION
    println("   force - acceleration = ", toString(mass))
    if CGS_STRESS ≠ CGS_FORCE
        truth = "true"
    else
        truth = "false"
    end
    println("   stress ≠ force       = ", truth)
    if CGS_STRESS == BARYE
        truth = "true"
    else
        truth = "false"
    end
    println("   stress == barye      = ", string(truth), "\n")
    println("SI units:")
    println("   joule:         ", toString(JOULE))
    println("   Kelvin:        ", toString(KELVIN))
    println("   kilogram:      ", toString(KILOGRAM))
    println("   meter:         ", toString(METER))
    println("   newton:        ", toString(NEWTON))
    println("   pascal:        ", toString(PASCAL), "\n")
    println("   dimensionless: ", toString(SI_DIMENSIONLESS))
    println("   mass:          ", toString(SI_MASS))
    println("   damping:       ", toString(SI_DAMPING))
    println("   stiffness:     ", toString(SI_STIFFNESS))
    println("   length:        ", toString(SI_LENGTH))
    println("   area:          ", toString(SI_AREA))
    println("   volume:        ", toString(SI_VOLUME))
    println("   time:          ", toString(SI_SECOND))
    println("   mass density:  ", toString(SI_MASSDENSITY))
    println("   displacement:  ", toString(SI_DISPLACEMENT))
    println("   velocity:      ", toString(SI_VELOCITY))
    println("   acceleration:  ", toString(SI_ACCELERATION))
    println("   force:         ", toString(SI_FORCE))
    println("   entropy:       ", toString(SI_ENTROPY))
    println("   energy:        ", toString(SI_ENERGY))
    println("   power:         ", toString(SI_POWER))
    println("   stress:        ", toString(SI_STRESS))
    println("   modulus:       ", toString(SI_MODULUS))
    println("   compliance:    ", toString(SI_COMPLIANCE))
    println("   strain:        ", toString(SI_STRAIN))
    println("   strain rate:   ", toString(SI_STRAINRATE), "\n")
    force = KILOGRAM + SI_ACCELERATION
    println("   mass + acceleration  = ", toString(force))
    mass = force - SI_ACCELERATION
    println("   force - acceleration = ", toString(mass))
    if SI_STRESS ≠ SI_FORCE
        truth = "true"
    else
        truth = "false"
    end
    println("   stress ≠ force       = ", truth)
    if SI_STRESS == PASCAL
        truth = "true"
    else
        truth = "false"
    end
    println("   stress == pascal     = ", string(truth))
    if BARYE == PASCAL
        truth = "true"
    else
        truth = "false"
    end
    print("   barye  == pascal     = ", string(truth))
    print()
    return nothing
end

end  # testPhysicalSystemsOfUnits
