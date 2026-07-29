import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure LyapunovPackage where
  vectorField : VectorField
  equilibriumPoint : Point
  lyapunovFunction : EnergyFunction
  closedOrbit : Orbit

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object is LyapunovInvariant

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.lyapunovStability

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse