module PhysicalSystemsOfUnits

export
    # Abstract type
    PhysicalSystemOfUnits,      # Abstract type for systems of physical units.
    # Concrete types
    #   included:   length, mass, time, temperature
    #   absent:     electric current, amount of substance, luminous intensity
    CGS,                # Centimeter, Gram, Second system of units.
    SI,                 # International System of units.
    # Methods extending their Base methods
    copy,
    deepcopy,
    # including overloading the Base operators: ==, ≠, +, -
    # Type testing
    isCGS,
    isSI,
    # Convert a System of Units to a string
    toString,
    # CGS physical constants: specific
    BARYE,
    CENTIGRADE,
    CENTIMETER,
    DYNE,
    ERG,
    GRAM,
    # CGS physical constants: general
    CGS_ACCELERATION,
    CGS_AREA,
    CGS_COMPLIANCE,
    CGS_DAMPING,
    CGS_DIMENSIONLESS,
    CGS_DISPLACEMENT,
    CGS_ENERGY,
    CGS_ENTROPY,
    CGS_FORCE,
    CGS_LENGTH,
    CGS_MASS,
    CGS_MASSDENSITY,
    CGS_MODULUS,
    CGS_POWER,
    CGS_SECOND,
    CGS_STIFFNESS,
    CGS_STRAIN,
    CGS_STRAINRATE,
    CGS_STRESS,
    CGS_STRESSRATE,
    CGS_STRETCH,
    CGS_STRETCHRATE,
    CGS_TEMPERATURE,
    CGS_TIME,
    CGS_VELOCITY,
    CGS_VOLUME,
    # SI physical constants: specific
    JOULE,
    KELVIN,
    KILOGRAM,
    NEWTON,
    METER,
    PASCAL,
    # SI physical constants: general
    SI_ACCELERATION,
    SI_AREA,
    SI_COMPLIANCE,
    SI_DAMPING,
    SI_DIMENSIONLESS,
    SI_DISPLACEMENT,
    SI_ENERGY,
    SI_ENTROPY,
    SI_FORCE,
    SI_LENGTH,
    SI_MASS,
    SI_MASSDENSITY,
    SI_MODULUS,
    SI_POWER,
    SI_SECOND,
    SI_STIFFNESS,
    SI_STRAIN,
    SI_STRAINRATE,
    SI_STRESS,
    SI_STRESSRATE,
    SI_STRETCH,
    SI_STRETCHRATE,
    SI_TEMPERATURE,
    SI_TIME,
    SI_VELOCITY,
    SI_VOLUME
#=
--------------------------------------------------------------------------------
=#
"""
# PhysicalSystemsOfUnits

Physical units are implementations of the abstract type

  * PhysicalSystemOfUnits

with concrete types being provided for the following systems of units

  * CGS:   Centimeter, Gram, Second system of units

  * SI:    International System of units

Methods for type testing include:

  * isCGS and isSI

Method for conversion to string is:

  * toString

Base operators that are overloaded include:

  * ==, ≠, + and -

where + adds unit exponents whenever two physical fields are multiplied, and - subtracts unit exponents whenever one physical field is divided by another.

Base methods that are extended include:

  * copy and deepcopy

Specific CGS units that are exported include:

  * BARYE, CENTIGRADE, CENTIMETER, DYNE, ERG and GRAM

while general CGS units include:

  * CGS_ACCELERATION CGS_AREA, CGS_COMPLIANCE, CGS_DAMPING, CGS_DIMENSIONLESS, CGS_DISPLACEMENT, CGS_ENERGY, CGS_ENTROPY, CGS_FORCE, CGS_LENGTH, CGS_MASS, CGS_MASSDENSITY, CGS_MODULUS, CGS_POWER, CGS_SECOND, CGS_STIFFNESS, CGS_STRAIN, CGS_STRAINRATE, CGS_STRESS, CGS_STRESSRATE, CGS_STRETCH, CGS_STRETCHRATE, CGS_TEMPERATURE, CGS_TIME, CGS_VELOCITY and CGS_VOLUME

Specific SI units that are exported include:

  * JOULE, KELVIN, KILOGRAM, NEWTON, METER and PASCAL

while general SI units include:

  * SI_ACCELERATION, SI_AREA, SI_COMPLIANCE, SI_DAMPING, SI_DIMENSIONLESS, SI_DISPLACEMENT, SI_ENERGY, SI_ENTROPY, SI_FORCE, SI_LENGTH, SI_MASS, SI_MASSDENSITY, SI_MODULUS, SI_POWER, SI_SECOND, SI_STIFFNESS, SI_STRAIN, SI_STRAINRATE, SI_STRESS, SI_STRESSRATE, SI_STRETCH, SI_STRETCHRATE, SI_TEMPERATURE, SI_TIME, SI_VELOCITY and SI_VOLUME

## Notes

Of the seven kinds of physical units that exist, only four are implemented here, namely: length, mass, time and temperature. Not included are the physical units for electric current, amount of substance, and luminous intensity. There are numerous other systems of units that could be introduced in future versions of this software, if needed.

Types PysicalScalar, PhysicalVector and PhysicalMatrix, defined in module PhysicalFields, and implemented in modules PhysicalScalars, PhysicalVectors and PhysicalMatrices all have a field that specifies the PhysicalSystemOfUnits in which they are evaluated.
"""
PhysicalSystemsOfUnits
#=
--------------------------------------------------------------------------------
=#
abstract type PhysicalSystemOfUnits end

struct CGS <: PhysicalSystemOfUnits
    cm::Int8   # centimeters
    g::Int8    # grams
    s::Int8    # seconds
    C::Int8    # degrees centigrade
end

struct SI <: PhysicalSystemOfUnits
    m::Int8    # meters
    kg::Int8   # kilograms
    s::Int8    # seconds
    K::Int8    # Kelvin
end
#=
--------------------------------------------------------------------------------
=#

# Type testing

function isCGS(u::PhysicalSystemOfUnits)::Bool
    return isa(u, CGS)
end

function isSI(u::PhysicalSystemOfUnits)::Bool
    return isa(u, SI)
end
#=
--------------------------------------------------------------------------------
=#

# Overloaded these operators: logical: ==, ≠
#                             unary:   +, -
#                             binary:  +, -

function Base.:(==)(y::CGS, z::CGS)::Bool
    if (y.cm == z.cm) && (y.g == z.g) && (y.s == z.s) && (y.C == z.C)
        return true
    else
        return false
    end
end

function Base.:(==)(y::SI, z::SI)::Bool
    if (y.m == z.m) && (y.kg == z.kg) && (y.s == z.s) && (y.K == z.K)
        return true
    else
        return false
    end
end

function Base.:(==)(y::CGS, z::SI)::Bool
    return false
end

function Base.:(==)(y::SI, z::CGS)::Bool
    return false
end

function Base.:≠(y::CGS, z::CGS)::Bool
    if (y.cm ≠ z.cm) || (y.g ≠ z.g) || (y.s ≠ z.s) || (y.C ≠ z.C)
        return true
    else
        return false
    end
end

function Base.:≠(y::SI, z::SI)::Bool
    if (y.m ≠ z.m) || (y.kg ≠ z.kg) || (y.s ≠ z.s) || (y.K ≠ z.K)
        return true
    else
        return false
    end
end

function Base.:≠(y::CGS, z::SI)::Bool
    return true
end

function Base.:≠(y::SI, z::CGS)::Bool
    return true
end

function Base.:+(y::CGS)::CGS
    cm = +y.cm
    g  = +y.g
    s  = +y.s
    C  = +y.C
    return CGS(cm, g, s, C)
end

function Base.:+(y::SI)::SI
    m  = +y.m
    kg = +y.kg
    s  = +y.s
    K  = +y.K
    return SI(m, kg, s, K)
end

function Base.:-(y::CGS)::CGS
    cm = -y.cm
    g  = -y.g
    s  = -y.s
    C  = -y.C
    return CGS(cm, g, s, C)
end

function Base.:-(y::SI)::SI
    m  = -y.m
    kg = -y.kg
    s  = -y.s
    K  = -y.K
    return SI(m, kg, s, K)
end

function Base.:+(y::CGS, z::CGS)::CGS
    cm = y.cm + z.cm
    g  = y.g + z.g
    s  = y.s + z.s
    C  = y.C + z.C
    return CGS(cm, g, s, C)
end

function Base.:+(y::SI, z::SI)::SI
    m  = y.m + z.m
    kg = y.kg + z.kg
    s  = y.s + z.s
    K  = y.K + z.K
    return SI(m, kg, s, K)
end

function Base.:-(y::CGS, z::CGS)::CGS
    cm = y.cm - z.cm
    g  = y.g - z.g
    s  = y.s - z.s
    C  = y.C - z.C
    return CGS(cm, g, s, C)
end

function Base.:-(y::SI, z::SI)::SI
    m  = y.m - z.m
    kg = y.kg - z.kg
    s  = y.s - z.s
    K  = y.K - z.K
    return SI(m, kg, s, K)
end
#=
--------------------------------------------------------------------------------
=#

# Methods extending their base methods.

function Base.:(copy)(u::CGS)::CGS
    c = u
    return c
end

function Base.:(copy)(u::SI)::SI
    c = u
    return c
end

function Base.:(deepcopy)(u::CGS)::CGS
    c = CGS(u.cm, u.g, u.s, u.C)
    return c
end

function Base.:(deepcopy)(u::SI)::SI
    c = SI(u.m, u.kg, u.s, u.K)
    return c
end
#=
--------------------------------------------------------------------------------
=#

# Methods that convert a system of units into a string.

function toString(u::CGS)::String
    if u.g > 1
        if (u.cm > 0) || (u.s > 0) || (u.C > 0)
            if u.g == 2
                s1 = "g²⋅"
            elseif u.g == 3
                s1 = "g³⋅"
            elseif u.g == 4
                s1 = "g⁴⋅"
            else
                s1 = string("g^", string(u.g), "⋅")
            end
        else
            if u.g == 2
                s1 = "g²"
            elseif u.g == 3
                s1 = "g³"
            elseif u.g == 4
                s1 = "g⁴"
            else
                s1 = string("g^", string(u.g))
            end
        end
    elseif u.g == 1
        if (u.cm > 0) || (u.s > 0) || (u.C > 0)
            s1 = "g⋅"
        else
            s1 = "g"
        end
    else
        s1 = ""
    end
    if u.cm > 1
        if (u.s > 0) || (u.C > 0)
            if u.cm == 2
                s2 = "cm²⋅"
            elseif u.cm == 3
                s2 = "cm³⋅"
            elseif u.cm == 4
                s2 = "cm⁴⋅"
            else
                s2 = string("cm^", string(u.cm), "⋅")
            end
        else
            if u.cm == 2
                s2 = "cm²"
            elseif u.cm == 3
                s2 = "cm³"
            elseif u.cm == 4
                s2 = "cm⁴"
            else
                s2 = string("cm^", string(u.cm))
            end
        end
    elseif u.cm == 1
        if (u.s > 0) || (u.C > 0)
            s2 = "cm⋅"
        else
            s2 = "cm"
        end
    else
        s2 = ""
    end
    if u.s > 1
        if u.C > 0
            if u.s == 2
                s3 = "s²⋅"
            elseif u.s == 3
                s3 = "s³⋅"
            elseif u.s == 4
                s3 = "s⁴⋅"
            else
                s3 = string("s^", string(u.s), "⋅")
            end
        else
            if u.s == 2
                s3 = "s²"
            elseif u.s == 3
                s3 = "s³"
            elseif u.s == 4
                s3 = "s⁴"
            else
                s3 = string("s^", string(u.s))
            end
        end
    elseif u.s == 1
        if u.C > 0
            s3 = "s⋅"
        else
            s3 = "s"
        end
    else
        s3 = ""
    end
    if u.C > 1
        if u.C == 2
            s4 = "°C²"
        elseif u.C == 3
            s4 = "°C³"
        elseif u.C == 4
            s4 = "°C⁴"
        else
            s4 = string("°C^", string(u.C))
        end
    elseif u.C == 1
        s4 = "°C"
    else
        s4 = ""
    end
    count = 0
    if u.cm < 0
        count += 1
    end
    if u.g < 0
        count += 1
    end
    if u.s < 0
        count += 1
    end
    if u.C < 0
        count += 1
    end
    if count > 1
        if (u.cm < 1) && (u.g < 1) && (u.s < 1) && (u.C < 1)
            s5 = "1/("
        else
            s5 = "/("
        end
    elseif count == 1
        if (u.cm < 1) && (u.g < 1) && (u.s < 1) && (u.C < 1)
            s5 = "1/"
        else
            s5 = "/"
        end
    else
        s5 = ""
    end
    if u.g < -1
        if (u.cm < 0) || (u.s < 0) || (u.C < 0)
            if u.g == -2
                s6 = "g²⋅"
            elseif u.g == -3
                s6 = "g³⋅"
            elseif u.g == -4
                s6 = "g⁴⋅"
            else
                s6 = string("g^", string(-u.g), "⋅")
            end
        else
            if u.g == -2
                s6 = "g²"
            elseif u.g == -3
                s6 = "g³"
            elseif u.g == -4
                s6 = "g⁴"
            else
                s6 = string("g^", string(-u.g))
            end
        end
    elseif u.g == -1
        if (u.cm < 0) || (u.s < 0) || (u.C < 0)
            s6 = "g⋅"
        else
            s6 = "g"
        end
    else
        s6 = ""
    end
    if u.cm < -1
        if (u.s < 0) || (u.C < 0)
            if u.cm == -2
                s7 = "cm²⋅"
            elseif u.cm == -3
                s7 = "cm³⋅"
            elseif u.cm == -4
                s7 = "cm⁴⋅"
            else
                s7 = string("cm^", string(-u.cm), "⋅")
            end
        else
            if u.cm == -2
                s7 = "cm²"
            elseif u.cm == -3
                s7 = "cm³"
            elseif u.cm == -4
                s7 = "cm⁴"
            else
                s7 = string("cm^", string(-u.cm))
            end
        end
    elseif u.cm == -1
        if (u.s < 0) || (u.C < 0)
            s7 = "cm⋅"
        else
            s7 = "cm"
        end
    else
        s7 = ""
    end
    if u.s < -1
        if u.C < 0
            if u.s == -2
                s8 = "s²⋅"
            elseif u.s == -3
                s8 = "s³⋅"
            elseif u.s == -4
                s8 = "s⁴⋅"
            else
                s8 = string("s^", string(-u.s), "⋅")
            end
        else
            if u.s == -2
                s8 = "s²"
            elseif u.s == -3
                s8 = "s³"
            elseif u.s == -4
                s8 = "s⁴"
            else
                s8 = string("s^", string(-u.s))
            end
        end
    elseif u.s == -1
        if (u.C < 0)
            s8 = "s⋅"
        else
            s8 = "s"
        end
    else
        s8 = ""
    end
    if u.C < -1
        if u.C == -2
            s9 = "°C²"
        elseif u.C == -3
            s9 = "°C³"
        elseif u.C == -4
            s9 = "°C⁴"
        else
            s9 = string("°C^", string(-u.C))
        end
    elseif u.C == -1
        s9 = "°C"
    else
        s9 = ""
    end
    if count > 1
        s10 = ")"
    else
        s10 = ""
    end
    s = string(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10)
    return s
end

function toString(u::SI)::String
    if u.kg > 1
        if (u.m > 0) || (u.s > 0) || (u.K > 0)
            if u.kg == 2
                s1 = "kg²⋅"
            elseif u.kg == 3
                s1 = "kg³⋅"
            elseif u.kg == 4
                s1 = "kg⁴⋅"
            else
                s1 = string("kg^", string(u.kg), "⋅")
            end
        else
            if u.kg == 2
                s1 = "kg²"
            elseif u.kg == 3
                s1 = "kg³"
            elseif u.kg == 4
                s1 = "kg⁴"
            else
                s1 = string("kg^", string(u.kg))
            end
        end
    elseif u.kg == 1
        if (u.m > 0) || (u.s > 0) || (u.K > 0)
            s1 = "kg⋅"
        else
            s1 = "kg"
        end
    else
        s1 = ""
    end
    if u.m > 1
        if (u.s > 0) || (u.K > 0)
            if u.m == 2
                s2 = "m²⋅"
            elseif u.m == 3
                s2 = "m³⋅"
            elseif u.m == 4
                s2 = "m⁴⋅"
            else
                s2 = string("m^", string(u.m), "⋅")
            end
        else
            if u.m == 2
                s2 = "m²"
            elseif u.m == 3
                s2 = "m³"
            elseif u.m == 4
                s2 = "m⁴"
            else
                s2 = string("m^", string(u.m))
            end
        end
    elseif u.m == 1
        if (u.s > 0) || (u.K > 0)
            s2 = "m⋅"
        else
            s2 = "m"
        end
    else
        s2 = ""
    end
    if u.s > 1
        if u.K > 0
            if u.s == 2
                s3 = "s²⋅"
            elseif u.s == 3
                s3 = "s³⋅"
            elseif u.s == 4
                s3 = "s⁴⋅"
            else
                s3 = string("s^", string(u.s), "⋅")
            end
        else
            if u.s == 2
                s3 = "s²"
            elseif u.s == 3
                s3 = "s³"
            elseif u.s == 4
                s3 = "s⁴"
            else
                s3 = string("s^", string(u.s))
            end
        end
    elseif u.s == 1
        if u.K > 0
            s3 = "s⋅"
        else
            s3 = "s"
        end
    else
        s3 = ""
    end
    if u.K > 1
        if u.K == 2
            s4 = "K²"
        elseif u.K == 3
            s4 = "K³"
        elseif u.K == 4
            s4 = "K⁴"
        else
            s4 = string("K^", string(u.K))
        end
    elseif u.K == 1
        s4 = "K"
    else
        s4 = ""
    end
    count = 0
    if u.m < 0
        count += 1
    end
    if u.kg < 0
        count += 1
    end
    if u.s < 0
        count += 1
    end
    if count > 1
        if (u.m < 1) && (u.kg < 1) && (u.s < 1) && (u.K < 1)
            s5 = "1/("
        else
            s5 = "/("
        end
    elseif count == 1
        if (u.m < 1) && (u.kg < 1) && (u.s < 1) && (u.K < 1)
            s5 = "1/"
        else
            s5 = "/"
        end
    else
        s5 = ""
    end
    if u.kg < -1
        if (u.m < 0) || (u.s < 0) || (u.K < 0)
            if u.kg == -2
                s6 = "kg²⋅"
            elseif u.kg == -3
                s6 = "kg³⋅"
            elseif u.kg == -4
                s6 = "kg⁴⋅"
            else
                s6 = string("kg^", string(-u.kg), "⋅")
            end
        else
            if u.kg == -2
                s6 = "kg²"
            elseif u.kg == -3
                s6 = "kg³"
            elseif u.kg == -4
                s6 = "kg⁴"
            else
                s6 = string("kg^", string(-u.kg))
            end
        end
    elseif u.kg == -1
        if (u.m < 0) || (u.s < 0) || (u.K < 0)
            s6 = "kg⋅"
        else
            s6 = "kg"
        end
    else
        s6 = ""
    end
    if u.m < -1
        if (u.s < 0) || (u.K < 0)
            if u.m == -2
                s7 = "m²⋅"
            elseif u.m == -3
                s7 = "m³⋅"
            elseif u.m == -4
                s7 = "m⁴⋅"
            else
                s7 = string("m^", string(-u.m), "⋅")
            end
        else
            if u.m == -2
                s7 = "m²"
            elseif u.m == -3
                s7 = "m³"
            elseif u.m == -4
                s7 = "m⁴"
            else
                s7 = string("m^", string(-u.m))
            end
        end
    elseif u.m == -1
        if (u.s < 0) || (u.K < 0)
            s7 = "m⋅"
        else
            s7 = "m"
        end
    else
        s7 = ""
    end
    if u.s < -1
        if u.K < 0
            if u.s == -2
                s8 = "s²⋅"
            elseif u.s == -3
                s8 = "s³⋅"
            elseif u.s == -4
                s8 = "s⁴⋅"
            else
                s8 = string("s^", string(-u.s), "⋅")
            end
        else
            if u.s == -2
                s8 = "s²"
            elseif u.s == -3
                s8 = "s³"
            elseif u.s == -4
                s8 = "s⁴"
            else
                s8 = string("s^", string(-u.s))
            end
        end
    elseif u.s == -1
        if u.K < 0
            s8 = "s⋅"
        else
            s8 = "s"
        end
    else
        s8 = ""
    end
    if u.K < -1
        if u.K == -2
            s9 = "K²"
        elseif u.K == -3
            s9 = "K³"
        elseif u.K == -4
            s9 = "K⁴"
        else
            s9 = string("K^", string(-u.K))
        end
    elseif u.K == -1
        s9 = "K"
    else
        s9 = ""
    end
    if count > 1
        s10 = ")"
    else
        s10 = ""
    end
    s = string(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10)
    return s
end
#=
--------------------------------------------------------------------------------
=#

# Specific units to the CGS system of units.

const BARYE      = CGS(-1, 1, -2, 0)   # units of stress
const CENTIGRADE = CGS(0, 0, 0, 1)     # units of degrees centigrade
const CENTIMETER = CGS(1, 0, 0, 0)     # units of length
const DYNE       = CGS(1, 1, -2, 0)    # units of force
const ERG        = CGS(2, 1, -2, 0)    # units of energy
const GRAM       = CGS(0, 1, 0, 0)     # units of mass

# Generic units implemented in the CGS system of units.

const CGS_ACCELERATION  = CGS(1, 0, -2, 0)
const CGS_AREA          = CGS(2, 0, 0, 0)
const CGS_COMPLIANCE    = CGS(1, -1, 2, 0)
const CGS_DAMPING       = CGS(0, 1, -1, 0)
const CGS_DIMENSIONLESS = CGS(0, 0, 0, 0)
const CGS_DISPLACEMENT  = CGS(1, 0, 0, 0)
const CGS_ENERGY        = CGS(2, 1, -2, 0)
const CGS_ENTROPY       = CGS(-1, 1, -2, -1)
const CGS_FORCE         = CGS(1, 1, -2, 0)
const CGS_LENGTH        = CGS(1, 0, 0, 0)
const CGS_MASS          = CGS(0, 1, 0, 0)
const CGS_MASSDENSITY   = CGS(-3, 1, 0, 0)
const CGS_MODULUS       = CGS(-1, 1, -2, 0)
const CGS_POWER         = CGS(2, 1, -3, 0)
const CGS_SECOND        = CGS(0, 0, 1, 0)
const CGS_STIFFNESS     = CGS(0, 1, -2, 0)
const CGS_STRAIN        = CGS(0, 0, 0, 0)
const CGS_STRAINRATE    = CGS(0, 0, -1, 0)
const CGS_STRESS        = CGS(-1, 1, -2, 0)
const CGS_STRESSRATE    = CGS(-1, 1, -3, 0)
const CGS_STRETCH       = CGS(0, 0, 0, 0)
const CGS_STRETCHRATE   = CGS(0, 0, -1, 0)
const CGS_TEMPERATURE   = CGS(0, 0, 0, 1)
const CGS_TIME          = CGS(0, 0, 1, 0)
const CGS_VELOCITY      = CGS(1, 0, -1, 0)
const CGS_VOLUME        = CGS(3, 0, 0, 0)

# Specific units to the SI system of units.

const JOULE    = SI(2, 1, -2, 0)   # units of energy
const KELVIN   = SI(0, 0, 0, 1)    # units of temperature
const KILOGRAM = SI(0, 1, 0, 0)    # units of mass
const METER    = SI(1, 0, 0, 0)    # units of length
const NEWTON   = SI(1, 1, -2, 0)   # units of force
const PASCAL   = SI(-1, 1, -2, 0)  # units of stress

# Generic units implemented in the SI system of units.

const SI_ACCELERATION  = SI(1, 0, -2, 0)
const SI_AREA          = SI(2, 0, 0, 0)
const SI_COMPLIANCE    = SI(1, -1, 2, 0)
const SI_DAMPING       = SI(0, 1, -1, 0)
const SI_DIMENSIONLESS = SI(0, 0, 0, 0)
const SI_DISPLACEMENT  = SI(1, 0, 0, 0)
const SI_ENTROPY       = SI(-1, 1, -2, -1)
const SI_ENERGY        = SI(2, 1, -2, 0)
const SI_FORCE         = SI(1, 1, -2, 0)
const SI_LENGTH        = SI(1, 0, 0, 0)
const SI_MASS          = SI(0, 1, 0, 0)
const SI_MASSDENSITY   = SI(-3, 1, 0, 0)
const SI_MODULUS       = SI(-1, 1, -2, 0)
const SI_POWER         = SI(2, 1, -3, 0)
const SI_SECOND        = SI(0, 0, 1, 0)
const SI_STIFFNESS     = SI(0, 1, -2, 0)
const SI_STRAIN        = SI(0, 0, 0, 0)
const SI_STRAINRATE    = SI(0, 0, -1, 0)
const SI_STRESS        = SI(-1, 1, -2, 0)
const SI_STRESSRATE    = SI(-1, 1, -3, 0)
const SI_STRETCH       = SI(0, 0, 0, 0)
const SI_STRETCHRATE   = SI(0, 0, -1, 0)
const SI_TEMPERATURE   = SI(0, 0, 0, 1)
const SI_TIME          = SI(0, 0, 1, 0)
const SI_VELOCITY      = SI(1, 0, -1, 0)
const SI_VOLUME        = SI(3, 0, 0, 0)

end # module PhysicalSystemsOfUnits
