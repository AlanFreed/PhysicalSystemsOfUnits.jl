module runtests

using
    PhysicalSystemsOfUnits,
    Test

@testset "isCGS" begin
    @test PhysicalSystemsOfUnits.isCGS(PhysicalSystemsOfUnits.BARYE) == true
    @test PhysicalSystemsOfUnits.isCGS(PhysicalSystemsOfUnits.PASCAL) == false
end

@testset "isSI" begin
    @test PhysicalSystemsOfUnits.isSI(PhysicalSystemsOfUnits.BARYE) == false
    @test PhysicalSystemsOfUnits.isSI(PhysicalSystemsOfUnits.PASCAL) == true
end

@testset "toString" begin
    @test PhysicalSystemsOfUnits.toString(PhysicalSystemsOfUnits.BARYE) == "g/(cm⋅s²)"
    @test PhysicalSystemsOfUnits.toString(PhysicalSystemsOfUnits.PASCAL) == "kg/(m⋅s²)"
end

end # runtests
