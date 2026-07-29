import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

def ConstrainedLyapunovClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem lyapunov_stability_endgame (A : AdmissibleClass) :
    ConstrainedLyapunovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse