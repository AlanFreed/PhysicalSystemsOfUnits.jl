module runtests

using
    PhysicalSystemsOfUnits,
    Test

@testset "isCGS" begin
    @test PhysicalSystemsOfUnits.isCGS(BARYE) == true
    @test PhysicalSystemsOfUnits.isCGS(PASCAL) == false
end

@testset "isSI" begin
    @test PhysicalSystemsOfUnits.isSI(BARYE) == false
    @test PhysicalSystemsOfUnits.isSI(PASCAL) == true
end

@testset "isDimensionless" begin
    @test PhysicalSystemsOfUnits.isDimensionless(CGS_DIMENSIONLESS) == true
    @test PhysicalSystemsOfUnits.isDimensionless(CGS_STRESS) == false
    @test PhysicalSystemsOfUnits.isDimensionless(SI_DIMENSIONLESS) == true
    @test PhysicalSystemsOfUnits.isDimensionless(SI_STRESS) == false
end

@testset "isEquivalent" begin
    @test PhysicalSystemsOfUnits.isEquivalent(BARYE, PASCAL) == true
    @test PhysicalSystemsOfUnits.isEquivalent(PASCAL, BARYE) == true
    @test PhysicalSystemsOfUnits.isEquivalent(DYNE, BARYE) == false
    @test PhysicalSystemsOfUnits.isEquivalent(NEWTON, PASCAL) == false
    @test PhysicalSystemsOfUnits.isEquivalent(PASCAL, PASCAL) == true
    @test PhysicalSystemsOfUnits.isEquivalent(BARYE, BARYE) == true
end

@testset "toString" begin
    @test PhysicalSystemsOfUnits.toString(PhysicalSystemsOfUnits.BARYE) == "g/(cm⋅s²)"
    @test PhysicalSystemsOfUnits.toString(PhysicalSystemsOfUnits.PASCAL) == "kg/(m⋅s²)"
end

end # runtests
