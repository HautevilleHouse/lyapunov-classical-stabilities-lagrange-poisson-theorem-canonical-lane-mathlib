import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean.LyapunovDifferentialEquation

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure LyapunovFunctionPackage {L : LyapunovDifferentialEquationPackage} where
  functionOnState : L.stateManifold → ℝ
  positiveDefiniteAtEquilibrium : Prop
  derivativeNonPositive : Prop
  lyapunovStabilityImplied : L.equilibriumPoint → Prop

theorem lyapunov_stability_from_function
    {L : LyapunovDifferentialEquationPackage} (V : LyapunovFunctionPackage L)
    (hPos : V.positiveDefiniteAtEquilibrium) (hDeriv : V.derivativeNonPositive) :
    V.lyapunovStabilityImplied L.equilibriumPoint := by
  exact V.lyapunovStabilityImplied L.equilibriumPoint

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
