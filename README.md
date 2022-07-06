# PhysicalSystemsOfUnits

Physical units are implementations of the abstract type

  * PhysicalSystemOfUnits

with concrete types being provided for the following systems of units

  * CGS - Centimeter, Gram, Second system of units

  * SI  - International System of units

Methods for type testing include:

  * isCGS and isSI

Method for conversion to string is:

  * toString

Base operators that are overloaded include:

  * ==, ≠, + and -

Operators == and ≠ test to see if the powers of like physical units are the same or not, as appropriate; for example, CGS_ACCELERATION == SI_ACCELERATION would return true. Operator + adds unit exponents whenever two physical fields are multiplied, and operator - subtracts unit exponents whenever one physical field is divided by another.

Base methods that are extended include:

  * copy and deepcopy

Specific CGS units that are exported include:

  * BARYE, CENTIGRADE, CENTIMETER, DYNE, ERG and GRAM

while general CGS units include:

  * CGS_ACCELERATION CGS_AREA, CGS_COMPLIANCE, CGS_DAMPING, CGS_DIMENSIONLESS, CGS_DISPLACEMENT, CGS_ENERGY, CGS_ENTROPY, CGS_ENTROPY_DENSITY, CGS_FORCE, CGS_LENGTH, CGS_MASS, CGS_MASS_DENSITY, CGS_MODULUS, CGS_POWER, CGS_SECOND, CGS_STIFFNESS, CGS_STRAIN, CGS_STRAINRATE, CGS_STRESS, CGS_STRESSRATE, CGS_STRETCH, CGS_STRETCHRATE, CGS_TEMPERATURE, CGS_TIME, CGS_VELOCITY and CGS_VOLUME

Specific SI units that are exported include:

  * JOULE, KELVIN, KILOGRAM, NEWTON, METER and PASCAL

while general SI units include:

  * SI_ACCELERATION, SI_AREA, SI_COMPLIANCE, SI_DAMPING, SI_DIMENSIONLESS, SI_DISPLACEMENT, SI_ENERGY, SI_ENTROPY, SI_ENTROPY_DENSITY, SI_FORCE, SI_LENGTH, SI_MASS, SI_MASS_DENSITY, SI_MODULUS, SI_POWER, SI_SECOND, SI_STIFFNESS, SI_STRAIN, SI_STRAINRATE, SI_STRESS, SI_STRESSRATE, SI_STRETCH, SI_STRETCHRATE, SI_TEMPERATURE, SI_TIME, SI_VELOCITY and SI_VOLUME

## Notes

Of the seven kinds of physical units that exist, only four are implemented here, namely: length, mass, time and temperature. Not included are the physical units for electric current, amount of substance, and luminous intensity. There are numerous other systems of units that could be introduced in future versions of this software, if needed.

Types PhysicalScalar, PhysicalVector and PhysicalMatrix, defined in module PhysicalFields and implemented in modules PhysicalScalars, PhysicalVectors and PhysicalMatrices, all have a field that specifies the PhysicalSystemOfUnits in which they are evaluated.

I wrote this package for personal consumption, unbeknownst at the time of the existing package [Unitful.jl](https://github.com/PainterQubits/Unitful.jl), which is quite advanced and well supported. Even so, there remains value in implementations of type PhysicalSystemOfUnits, as they are fields in my types: PhysicalScalar, PhysicalVector and PhysicalMatrix.

