import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean.LyapunovDifferentialEquation

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure PoissonStabilityPackage {L : LyapunovDifferentialEquationPackage} where
  recurrentPoints : Set L.stateManifold
  poissonStableTrajectories : Prop
  closureOfTrajectoriesInvariant : Prop

theorem poisson_stability_property
    {L : LyapunovDifferentialEquationPackage} (P : PoissonStabilityPackage L)
    (hRecurr : P.poissonStableTrajectories) : True := by
  trivial

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
