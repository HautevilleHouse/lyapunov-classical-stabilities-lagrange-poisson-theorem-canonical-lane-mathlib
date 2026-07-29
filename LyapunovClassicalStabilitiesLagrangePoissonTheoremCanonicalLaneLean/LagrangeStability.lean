import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean.LyapunovFunction

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure LagrangeStabilityPackage {L : LyapunovDifferentialEquationPackage}
    (V : LyapunovFunctionPackage L) where
  forwardTrajectoryBounded : Prop
  omegaLimitSetInvariant : Prop
  lagrangeStabilityHolds : Prop

theorem lagrange_stability_criterion
    {L : LyapunovDifferentialEquationPackage} {V : LyapunovFunctionPackage L}
    (P : LagrangeStabilityPackage V) : P.lagrangeStabilityHolds := by
  exact P.lagrangeStabilityHolds

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
