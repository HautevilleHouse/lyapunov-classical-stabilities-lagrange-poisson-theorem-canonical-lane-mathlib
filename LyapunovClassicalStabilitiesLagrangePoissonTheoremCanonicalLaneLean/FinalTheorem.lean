import HautevilleHouse.LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean

def ConstrainedLyapunovLagrangePoissonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lyapunov_lagrange_poisson_endgame (A : AdmissibleClass) :
    ConstrainedLyapunovLagrangePoissonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LyapunovClassicalStabilitiesLagrangePoissonTheoremCanonicalLaneLean
end HautevilleHouse
