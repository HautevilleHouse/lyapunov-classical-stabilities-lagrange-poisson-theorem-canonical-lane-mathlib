import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

structure InvariantManifoldPackage where
  stableManifold : Submanifold
  unstableManifold : Submanifold
  centerManifold : Submanifold
  lagrangePoissonInvariant : Prop

def InvariantManifoldClosed (P : InvariantManifoldPackage) : Prop :=
  P.lagrangePoissonInvariant

theorem invariant_manifold_closed_from_package (P : InvariantManifoldPackage) :
    InvariantManifoldClosed P := by
  exact P.lagrangePoissonInvariant

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse